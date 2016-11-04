# Description:
#   Send slack reactions with hubot
#
# Environment:
#   HUBOT_SLACK_TOKEN

slack = require 'hubot-slack'

module.exports = (robot) ->
  options =
    endpoint: "https://slack.com/api/reactions.add"

  reaction = (data) ->
    payload = {}
    payload.name = data.name
    payload.timestamp = data.message.id
    payload.channel  = data.message.room
    payload.token = process.env.HUBOT_SLACK_TOKEN

    robot.http(options.endpoint + "?token=" + payload.token + "&name=" + payload.name + "&timestamp=" + payload.timestamp + "&channel=" + payload.channel)
      .get() (err, res, body) ->
        return if res.statusCode == 200

        robot.logger.error "Error!", res.statusCode, body

  robot.on "slack.reaction", (data) ->
    reaction data

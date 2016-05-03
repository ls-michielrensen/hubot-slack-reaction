# Slack Reactions for [hubot-slack](https://github.com/slackhq/hubot-slack)
Give hubot the power to respond with a reaction on a message in Slack

To use `slack.reaction` events, just run the following in your hubot repository:

```
npm install hubot-slack-reaction --save
```

And then add `hubot-slack-reaction` to `external-scripts.json`.

This requires `hubot-slack` and uses the `HUBOT_SLACK_TOKEN` to work its magic.

## Usage

Emit a `slack.reaction` event with the following parameters:

```coffee
robot.emit 'slack.reaction',
    message: msg.message
    name: 'beer' # the name of the reaction with the :
```

## Attribution

The idea was born when reading [hubot-slack-attachment](https://github.com/inkel/hubot-slack-attachment) and much
of the structure comes form that project.

Kudos to:

* [Leandro Lopéz](https://github.com/inkel)

## License
This software is licensed under MIT License. See [LICENSE](LICENSE) for more details.

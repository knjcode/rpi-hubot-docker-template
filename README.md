# rpi-hubot-docker-template

Template of Hubot Docker container on Raspberry Pi

## How to use docker on Raspberry Pi

Install [Hypriot Docker Image for Raspberry Pi](http://blog.hypriot.com/downloads/) on your Raspberry Pi.

See [Getting started with Docker on your Raspberry Pi](http://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/) to setup your docker environment.

## Usage

### Clone this repo

```
$ git clone https://github.com/knjcode/rpi-hubot-docker-template
$ cd rpi-hubot-docker-template
```

### Create Docker Image

```
$ docker build -t rpi-hubot .
```

This Docker Image derived from [hypriot/rpi-node](https://hub.docker.com/r/hypriot/rpi-node/).

### Run hubot Locally

```
$ docker run -i -t rpi-hubot

> rpi-hubot-docker-template@0.0.0 shell /data
> bin/hubot -a shell
[Tue Aug 11 2015 15:02:40 GMT+0000 (UTC)] INFO hubot-redis-brain: Using default redis on localhost:6379

hubot> hubot ping
hubot> PONG
```

### Run hubot on Slack

First, set `HUBOT_SLACK_TOKEN` environment variable.

```
$ export HUBOT_SLACK_TOKEN="your-hubot-slack-token"
```

Then run hubot on slack

```
$ docker run -d --env HUBOT_SLACK_TOKEN rpi-hubot slack
```

### Acknowledgements

- [Getting started with Docker on your Raspberry Pi](http://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/)
- [Downloads &middot; Docker Pirates ARMed with explosive stuff](http://blog.hypriot.com/downloads/)
- [hypriot/rpi-node](https://hub.docker.com/r/hypriot/rpi-node/)

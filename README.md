# synology-docker-compose-stack
Credits to [this guide](https://www.smarthomebeginner.com/docker-media-server-2022/#Building_Docker_Media_Server) for the nice explanation on how to create a very similar container stack. Replaced some services that are no longer maintained.

An example of what should be in the .env file has been provided in .env.dist, content of this file must be copied to .env and env variables must be filled in.

Create directories (appdata, media) prior to starting the docker stack.

The compose stack can be started using `sudo docker-compose up -d`.
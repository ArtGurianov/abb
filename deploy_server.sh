#! /bin/bash
#DEPLOY TO HEROKU:
yarn build:server
heroku container:push --app=lit-crag-12429 web
heroku container:release --app=lit-crag-12429 web
#DEPLOY TO DIGITAL OCEAN:
#docker build -t artgurianov/abb:latest .
#docker push artgurianov/abb:latest
#PULLING TO THE SERVER THROUGH SSH
#ssh root@167.99.11.233 "docker pull artgurianov/abb:latest && docker tag artgurianov/abb:latest dokku/abb:latest && dokku tags:deploy abb latest"
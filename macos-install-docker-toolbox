#! /bin/sh


brew install docker-engine docker
brew cask install virtualbox
docker-machine create --driver virtualbox default
eval "$(docker-machine env default)"
docker-machine restart
brew install docker-compose

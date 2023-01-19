include help.mk

BUILD_TIMESTAMP := $(shell date +%s)

########################################
#   development                        #
########################################

## @dev Create base images
dev:
	hugo server --disableFastRender --buildDrafts --buildExpired --buildFuture --forceSyncStatic

########################################
#   vcs                                #
########################################

## @vcs Create base images
pull:
	git pull

## @vcs Initialize and pull submodules
init:
	git submodule init
	git submodule update

########################################
#   build                              #
########################################

## @build Build the image
build:
	docker build --tag portfoliohugo .

## @build Remove the container
clean:
	-docker rm liveportfoliohugo

########################################
#   service                            #
########################################

## @service Stops the running container
stop:
	-docker stop liveportfoliohugo

## @service Starts the container
start:
	docker run -p8090:80 -d --name liveportfoliohugo portfoliohugo:latest

## @service Builds and starts the container
up: build start

## @service Stops and deletes the container
down: stop clean

## @service Performs a full fresh launch
restart: down up

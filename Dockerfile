FROM debian:bullseye-slim as build

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NOWARNINGS="yes"

# Update packages
RUN apt-get update
RUN apt-get upgrade -y

# Get dependencies
RUN apt-get install wget -y
RUN apt-get install git -y
RUN apt-get install hugo -y

COPY ./ /site
WORKDIR /site
RUN hugo

#Copy static files to Nginx
FROM nginx:alpine
COPY --from=build /site/public /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

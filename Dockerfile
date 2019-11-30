FROM ruby:alpine
MAINTAINER "Ludovic Piot <ludovic.piot@thegaragebandofit.com>"

# Git
RUN apk add --update git

# Ruby
RUN apk add --update ruby
RUN apk add --update ruby-dev
RUN apk add --update build-base

# Gem install
RUN gem install travis

ENTRYPOINT [ "/bin/sh" ]

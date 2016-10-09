FROM ruby
MAINTAINER Michael Campbell <michael.campbell@gmail.com>

RUN apt-get update && apt-get install zip unzip -y && apt-get clean

RUN gem install bundler
COPY ./Gemfile  Gemfile
COPY ./Gemfile.lock  Gemfile.lock

RUN bundle install

ENTRYPOINT /usr/local/bundle/bin/cucumber

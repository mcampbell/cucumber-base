FROM ruby
MAINTAINER Michael Campbell <michael.campbell@gmail.com>

RUN gem install bundler
COPY ./Gemfile  Gemfile
COPY ./Gemfile.lock  Gemfile.lock

RUN bundle install

ENTRYPOINT /usr/local/bundle/bin/cucumber

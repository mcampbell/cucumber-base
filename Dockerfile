FROM ruby
MAINTAINER Michael Campbell <michael.campbell@gmail.com>

RUN gem install cucumber rspec-expectations excon

ENTRYPOINT cucumber

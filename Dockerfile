FROM ruby
RUN gem install cucumber

ENTRYPOINT cucumber
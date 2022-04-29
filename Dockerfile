FROM ruby:3-alpine3.15

WORKDIR /app
RUN apk --update add --no-cache --virtual run-dependencies \
  bash \
  build-base \
  postgresql-client \
  postgresql-dev \
  git

COPY . .

RUN bundle install
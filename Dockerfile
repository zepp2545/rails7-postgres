FROM ruby:2.7.5-alpine3.15

RUN apk update && \
    apk add --no-cache \
      build-base \
      compat \
      tzdata
      libpq-dev \
      postgresql-client \
      nodejs \
      yarn \

ENV APP_ROOT /myapp
WORKDIR $APP_ROOT

COPY Gemfile /myapp/Gemfile

COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install --path ${APP_ROOT}/bundle

EXPOSE 3000

FROM ruby:2.5.1-alpine

ENV APP_HOME /web/app
WORKDIR $APP_HOME

RUN apk update \
  && apk upgrade \
  && apk add \
    curl \
    wget \
    bash \
    build-base \
    libxml2-dev \
    libxslt-dev \
    postgresql-client \
    postgresql-dev \
    nodejs

# Clean APK cache
RUN rm -rf /var/cache/apk/*

# Prepare app
WORKDIR $APP_HOME

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
  BUNDLE_JOBS=2 \
  BUNDLE_PATH=/bundle

RUN gem install bundler && gem install rake

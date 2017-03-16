FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /holirails
WORKDIR /holirails
ADD Gemfile /holirails/Gemfile
ADD Gemfile.lock /holirails/Gemfile.lock
RUN bundle install
ADD . /holirails

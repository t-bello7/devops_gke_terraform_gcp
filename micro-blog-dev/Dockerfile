FROM ruby:3.1.2

RUN bundle config --global frozen 1
RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . ./ 
CMD ["rails", "server"]
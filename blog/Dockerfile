FROM ruby:3.1.2

ENV PORT 3000

RUN bundle config --global frozen 1
RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get autoremove
RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install
EXPOSE 3000
COPY . ./ 

RUN chmod u+x /myapp/bin/entry.sh
ENTRYPOINT ["bin/entry.sh"]
CMD ["rails", "server"]
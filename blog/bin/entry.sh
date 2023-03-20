#!/bin/bash
set -e
if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bin/rails db:create
bin/rails db:migrate
# bin/rails db:seed

bundle exec rails s -b 0.0.0.0

exec "$@"

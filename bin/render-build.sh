#!/usr/bin/env bash
set -o errexit

bundle install
bundle exec rake db:migrate  # 👈 migrate trước
bundle exec rake db:seed     # seed sau

bundle exec rake assets:clean
bundle exec rake assets:precompile


 

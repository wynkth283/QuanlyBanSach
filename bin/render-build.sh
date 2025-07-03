#!/usr/bin/env bash
set -o errexit

bundle install

# Dọn dẹp asset cũ (nếu có)
bin/rails assets:clean

# Tạo asset mới cho production
bin/rails assets:precompile

# Migrate database
bin/rails db:migrate

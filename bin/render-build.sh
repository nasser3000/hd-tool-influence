#!/usr/bin/env bash
set -o errexit

echo "--- Step 1: bundle install ---"
bundle install

echo "--- Step 2: assets:precompile ---"
bundle exec rails assets:precompile

echo "--- Step 3: assets:clean ---"
bundle exec rails assets:clean

echo "--- Build complete ---"

#!/usr/bin/env bash

cd /vagrant
gem install bundler
gem install rails
gem install pry
gem install rspec

bundle

rails new sample_app

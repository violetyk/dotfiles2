#!/bin/bash

brew install rbenv ruby-build

# set version
if [ $(rbenv version-name global) != $RUBY_VERSION ] ; then
    rbenv install $RUBY_VERSION 
    rbenv global $RUBY_VERSION
fi

eval "$(rbenv init -)"

# clean gems
gem uninstall -I -a -x --user-install --force

 # install bundler
gem install --no-user-install bundler

bundle install --gemfile=./Gemfile
rbenv rehash
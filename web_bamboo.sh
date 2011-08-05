#! /bin/sh
rvm ruby-1.9.2@bse_taller exec bundle install
rvm ruby-1.9.2@bse_taller rake -f Rakefile_bamboo RAILS_ENV=test bamboo --trace

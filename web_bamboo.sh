#! /bin/sh
mkdir tmp
cp /home/ubuntu/bamboo_extra/BSE/metric_fu/ tmp/ -R

rvm ruby-1.9.2@bse_taller exec bundle install
rvm ruby-1.9.2@bse_taller exec rake -f Rakefile_bamboo RAILS_ENV=test bamboo --trace

cp tmp/metric_fu/ /home/ubuntu/bamboo_extra/BSE/ -R


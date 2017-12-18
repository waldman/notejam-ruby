#!/bin/sh
cd /srv/app

#RAILS_ENV=production bundle exec puma
sudo service puma stop
sudo service puma start
sudo service nginx restart

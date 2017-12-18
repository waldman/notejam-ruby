#!/bin/bash
cd /srv/app
rm -rf .bundle
RAILS_ENV=production bundle install --path vendor/bundle
RAILS_ENV=production bundle exec rake db:create
RAILS_ENV=production bundle exec rake db:migrate
#RAILS_ENV=production bundle exec rake assets:clobber
#RAILS_ENV=production bundle exec rake assets:precompile

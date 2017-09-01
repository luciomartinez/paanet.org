# Run migrations after each deploy
release: bundle exec rails db:migrate

# https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server
web: bundle exec puma -C config/puma.rb

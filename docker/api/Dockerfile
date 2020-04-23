FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
# Set an environment variable where the Rails app is installed to inside of Docker image
ENV RAILS_ROOT /var/www/payment
RUN mkdir -p $RAILS_ROOT
# Set working directory
WORKDIR $RAILS_ROOT
# Setting env up
ENV RAILS_ENV='development'
ENV RACK_ENV='development'
# Adding gems
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler
RUN bundle install --jobs 20 --retry 5
# Adding project files
COPY . .
COPY config/database.yml.docker.example config/database.yml
COPY docker/api/.env.docker .env
COPY docker/api/puma.docker config/puma.rb

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]


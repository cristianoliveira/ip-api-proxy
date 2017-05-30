FROM ruby:2.4

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

ENV RACK_ENV production

RUN mkdir -p /usr/src/app

COPY . /usr/src/app
COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/

# Run certificate.sh
#COPY server.key /usr/src/app/
#COPY server.crt /usr/src/app/

WORKDIR /usr/src/app
RUN gem install bundler
RUN bundle install

EXPOSE 443
EXPOSE 80

FROM ruby:alpine3.17
RUN apk add \
    build-base \
    postgresql-dev \
    tzdata \
    nodejs

WORKDIR /app
COPY Gemfile* .
RUN bundle install
COPY . .
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
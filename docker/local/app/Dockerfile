FROM ruby:3.2.2

RUN apt-get update && apt-get install -y \
 build-essential libpq-dev nodejs zlib1g-dev liblzma-dev

RUN useradd --create-home --uid 1000 --user-group --system app

WORKDIR /app

COPY . .

RUN bundle install

EXPOSE 3000
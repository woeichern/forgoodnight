FROM ruby:latest

COPY . /app
WORKDIR /app
RUN apt-get update -qq && apt-get install -y build-essential

RUN apt-get install git curl

RUN gem install sinatra

RUN gem install bundle
RUN bundle install

EXPOSE 4567

CMD ["ruby", "app.rb"]
# README

Ruby 3.2.2, Rails 7.1

Clone repository:

`git clone git@github.com:dim321/open_weather.git`

`cp .env.example .env`

run project in container in dev mode locally:

`docker-compose up`

first time you need to execute

`docker exec -it app-weather bin/setup`

Then you can see city weather details:

`localhost:3000`

Also you can have response in JSON format:

`http://localhost:3000/v1/getCurrentWeather.json?city=Batumi`

I tried to deploy app-weather at AWS Lambda with gem Lamby,
but unsuccessful.
I will try to fix it at this weekend.

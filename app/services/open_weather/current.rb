module OpenWeather
  class Current < ApplicationService
    include OpenWeather::Client

    def initialize(city)
      @city = city
    end

    attr_reader :city

  # Cache Policy time set to 60 seconds. Meaning that weather data
  # cached only for a minute, and then data should be requested from the OpenWeather API
    def call
      Rails.cache.fetch(city, expires_in: 1.minutes) do
        get_weather
      end
    end
  end
end

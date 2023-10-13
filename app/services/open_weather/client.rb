module OpenWeather
  module Client

    API_KEY = ENV.fetch('OPEN_WEATHER_API_KEY').freeze
    API_URL = ENV.fetch('OPEN_WEATHER_API_URL').freeze

    def connection
      @connection ||= Faraday.new(url: API_URL) do |conn|
        conn.adapter(Faraday.default_adapter)
      end
    end

    def get_weather
      response = connection.get("data/2.5/weather?q=#{city}&appid=#{API_KEY}&units=metric")
      JSON.parse(response.body)
    end
  end
end

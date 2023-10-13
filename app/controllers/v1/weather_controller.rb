class V1::WeatherController < ApplicationController
  def current
    @current_weather = OpenWeather::Current.call(cityname)

    respond_to do |format|
      format.html
      format.json { render json: @current_weather }
    end
  end

  private

  def cityname
    params.permit(:city, :commit)[:city] || 'London'
  end
end

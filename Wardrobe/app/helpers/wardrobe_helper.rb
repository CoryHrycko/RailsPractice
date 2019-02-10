class WardrobeHelper
  def initialize
     @weather_service = WeatherService.new
  end

  def coat_for_today
    current_temp = @weather_service.current_temp
    if current_temp < 40
      'heavy'
    else
      'none'
    end
  end
end

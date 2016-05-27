require 'barometer'

puts "Where ya at?"
puts "Tell me a city and state or a zip code, please."
location=gets

def weather_getter(location)

barometer = Barometer.new(location)
weather = barometer.measure

temperature=weather.current.temperature

return temperature
end

temp=weather_getter(location).f
puts "The weather is "+temp+" degrees today "

require 'barometer'
barometer = Barometer.new(location)
weather = barometer.measure

tomorrow = Time.now.strftime('%d').to_i+1

weather.forecast.each do |forecast|

	day = forecast.starts_at.day

	if day == tomorrow
		day_name="And it's looking like tomorrow"
	else
		day_name=forecast.starts_at.strftime('%A')
	end
puts day_name + ' is going to be ' + forecast.icon + ' with a low of ' + forecast.low.f.to_s + ' degrees and a high of ' + forecast.high.f.to_s+" degrees"
end




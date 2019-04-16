package springdemo.service;

import springdemo.entity.Weather;


public interface WeatherService {
	public Weather getWeather(String city);
}

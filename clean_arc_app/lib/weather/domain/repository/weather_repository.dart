import 'package:clean_arc_app/weather/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}

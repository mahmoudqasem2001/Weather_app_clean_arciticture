import 'package:clean_arc_app/weather/domain/repository/base_weather_repository.dart';

import '../entities/weather.dart';

class GetWeatherByCountry {
  final BaseWeatherRepository repository;

  GetWeatherByCountry(this.repository);

  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}

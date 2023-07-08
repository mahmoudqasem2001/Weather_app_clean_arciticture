import 'package:clean_arc_app/weather/data/data_source/remote_data_source.dart';
import 'package:clean_arc_app/weather/domain/entities/weather.dart';
import 'package:clean_arc_app/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final RemoteDataSource remoteDataSource;

  WeatherRepository(this.remoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await remoteDataSource.getWeatherByCityName(cityName))!;
  }
}

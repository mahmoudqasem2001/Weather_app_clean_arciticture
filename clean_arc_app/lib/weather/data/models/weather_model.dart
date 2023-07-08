import 'package:clean_arc_app/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
    super.id,
    super.cityName,
    super.description,
    super.tempCelsius,
  );
  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        json['location']['tz_id'],
        json['location']['name'],
        json['current']['condition']['text'],
        json['current']['temp_c'],
      );
}

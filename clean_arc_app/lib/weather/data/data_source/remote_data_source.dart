import 'dart:convert';

import 'package:clean_arc_app/core/utils/constants.dart';
import 'package:clean_arc_app/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try {
      var response = await Dio().get(
          "${AppConstants.baseUrl}/current.json?q=$cityName&lang=EN&key=${AppConstants.appKey}");
      print(response);
      return WeatherModel.fromJson(json.decode(response.data));
    } catch (e) {
      print(e);
      return null;
    }
  }
}

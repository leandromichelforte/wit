import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wit/constants/constants.dart';
import 'package:wit/models/weather_model.dart';

class WeatherRepository {
  WeatherRepository({required Dio dio})
      : _dio = dio,
        super();
  final Dio _dio;

  Future getWeather(Map<String, dynamic> queryParams) async {
    queryParams.addAll({'APPID': Constants.API_KEY, 'units': 'metric'});
    try {
      final response =
          await _dio.get(Constants.BASE_URL, queryParameters: queryParams);
      return WeatherModel.fromMap(response.data);
    } on DioError catch (dioError) {
      debugPrint(dioError.toString());
      return dioError.response?.statusCode;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}

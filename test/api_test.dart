import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wit/models/weather_model.dart';
import 'package:wit/repositories/weather_repository.dart';

void main() {
  test(
    "Should return the WeatherModel if success, null or int if failure",
    () async {
      final Map<String, dynamic> queryParams = {'q': 'London'};
      final response =
          await WeatherRepository(dio: Dio()).getWeather(queryParams);
      expect([int, WeatherModel].contains(response.runtimeType), true);
    },
  );
}

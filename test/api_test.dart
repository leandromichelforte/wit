import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:wit/repositories/weather_repository.dart';

void main() {
  test(
    "API test",
    () async {
      final location = await Location().getLocation();
      final Map<String, dynamic> queryParams = {
        'lat': location.latitude,
        'lon': location.longitude
      };
      final response =
          await WeatherRepository(dio: Dio()).getWeather(queryParams);
      expect([].contains(response.runtimeType), false);
    },
  );
}

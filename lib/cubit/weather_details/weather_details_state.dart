part of 'weather_details_cubit.dart';

@immutable
abstract class WeatherDetailsState {}

class WeatherDetailsInitialState extends WeatherDetailsState {}

class WeatherDetailsLoadedState extends WeatherDetailsState {
  WeatherDetailsLoadedState({required this.weather});
  final WeatherModel weather;
}

class WeatherDetailsLoadingState extends WeatherDetailsState {}

class WeatherDetailsErrorState extends WeatherDetailsState {
  WeatherDetailsErrorState({this.statusCode});
  final int? statusCode;
}

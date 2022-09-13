part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadedState extends HomeState {
  HomeLoadedState({required this.locations});
  final List<WeatherModel> locations;
}

class HomeLoadingState extends HomeState {}

class HomeErrorState extends HomeState {
  HomeErrorState({this.statusCode});
  final int? statusCode;
}

// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:meta/meta.dart';
import 'package:wit/models/weather_model.dart';
import 'package:wit/repositories/weather_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required Location location, required WeatherRepository repository})
      : _location = location,
        _repository = repository,
        super(HomeInitialState());

  final Location _location;
  final WeatherRepository _repository;

  getLocations() async {
    emit(HomeLoadingState());
    final List<WeatherModel> locations = [
      WeatherModel(name: 'Lisbon'),
      WeatherModel(name: 'Madrid'),
      WeatherModel(name: 'Paris'),
      WeatherModel(name: 'Berlin'),
      WeatherModel(name: 'Bern'),
      WeatherModel(name: 'Rome'),
      WeatherModel(name: 'London'),
      WeatherModel(name: 'Dublin'),
      WeatherModel(name: 'Prague'),
      WeatherModel(name: 'Vienna'),
    ];
    LocationData locationData = await _location.getLocation();
    final Map<String, dynamic> queryParams = {
      'lat': locationData.latitude,
      'lon': locationData.longitude
    };

    final result = await _repository.getWeather(queryParams);

    if (result.runtimeType == WeatherModel) {
      emit(HomeLoadedState(locations: [result, ...locations]));
      return;
    }
    if (result.runtimeType == int) {
      emit(HomeErrorState(statusCode: result));
      return;
    }
    return emit(HomeErrorState());
  }
}

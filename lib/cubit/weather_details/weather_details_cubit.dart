// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wit/models/weather_model.dart';
import 'package:wit/repositories/weather_repository.dart';

part 'weather_details_state.dart';

class WeatherDetailsCubit extends Cubit<WeatherDetailsState> {
  WeatherDetailsCubit({required WeatherRepository repository})
      : _repository = repository,
        super(WeatherDetailsInitialState());

  final WeatherRepository _repository;

  getWeatherDetails(WeatherModel weather) async {
    emit(WeatherDetailsLoadingState());
    Map<String, dynamic> queryParams = {'q': weather.name};
    final result = await _repository.getWeather(queryParams);
    if (result.runtimeType == WeatherModel) {
      emit(WeatherDetailsLoadedState(weather: result));
      return;
    }
    if (result.runtimeType == int) {
      emit(WeatherDetailsErrorState(statusCode: result));
      return;
    }
    return emit(WeatherDetailsErrorState());
  }
}

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:location/location.dart';
import 'package:wit/cubit/home/home_cubit.dart';
import 'package:wit/cubit/weather_details/weather_details_cubit.dart';
import 'package:wit/repositories/weather_repository.dart';

GetIt getIt = GetIt.instance;

setupLocator() {
  getIt.registerSingleton<Dio>(Dio(BaseOptions(connectTimeout: 8000)),
      signalsReady: true);

  getIt.registerSingleton<Location>(Location(), signalsReady: true);

  getIt.registerSingleton<WeatherRepository>(
      WeatherRepository(dio: getIt.get<Dio>()),
      signalsReady: true);

  getIt.registerFactory<HomeCubit>(() => HomeCubit(
      repository: getIt.get<WeatherRepository>(),
      location: getIt.get<Location>()));

  getIt.registerFactory<WeatherDetailsCubit>(
      () => WeatherDetailsCubit(repository: getIt.get<WeatherRepository>()));
}

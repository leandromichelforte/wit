// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:wit/cubit/home/home_cubit.dart';
import 'package:wit/locator.dart';

import '../screens/home/home_screen.dart';

class Routes {
  static const SPLASH_ROUTE = '/';
  static const HOME_ROUTE = '/home';
  static const WEATHER_DETAILS_ROUTE = '/weather_detail';
  static final ROUTES = {
    Routes.HOME_ROUTE: (context) => HomeScreen(cubit: getIt.get<HomeCubit>()),
  };
}

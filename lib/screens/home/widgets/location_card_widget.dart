import 'package:flutter/material.dart';
import 'package:wit/cubit/weather_details/weather_details_cubit.dart';
import 'package:wit/locator.dart';
import 'package:wit/models/weather_model.dart';
import 'package:wit/screens/weather_details/weather_details_screen.dart';

class LocationCardWidget extends StatelessWidget {
  const LocationCardWidget(
      {Key? key, required WeatherModel weather, required int index})
      : _index = index,
        _weather = weather,
        super(key: key);

  final WeatherModel _weather;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WeatherDetailsScreen(
                    cubit: getIt.get<WeatherDetailsCubit>(),
                    weather: _weather,
                  ))),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                TextSpan(text: _weather.name ?? 'Location'),
                if (_index == 0)
                  const TextSpan(
                      text: '  (Current location)',
                      style: TextStyle(color: Colors.grey))
              ])),
        ),
      ),
    );
  }
}

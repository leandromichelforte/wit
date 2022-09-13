import 'package:flutter/material.dart';
import 'package:wit/cubit/weather_details/weather_details_cubit.dart';

class WeatherSectionWidget extends StatelessWidget {
  const WeatherSectionWidget(
      {Key? key, required WeatherDetailsLoadedState state})
      : _state = state,
        super(key: key);

  final WeatherDetailsLoadedState _state;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: Divider(color: Colors.blue)),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: const Text(
              'Weather',
              style: TextStyle(fontSize: 22),
            ),
          ),
          const Expanded(child: Divider(color: Colors.blue))
        ],
      ),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _state.weather.weatherMain ?? 'Clear',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              _state.weather.weatherDescription ?? 'clear sky',
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:wit/cubit/weather_details/weather_details_cubit.dart';

class TemperatureSectionWidget extends StatelessWidget {
  const TemperatureSectionWidget(
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
              'Temperature',
              style: TextStyle(fontSize: 22),
            ),
          ),
          const Expanded(child: Divider(color: Colors.blue))
        ],
      ),
      const SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Min: ${_state.weather.mainTempMin}°C'),
                Text('Current: ${_state.weather.mainTemp}°C'),
                Text('Max: ${_state.weather.mainTempMax}°C')
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Feels Like: ${_state.weather.mainFeelsLike}°C'),
                Text('Humidity: ${_state.weather.mainHumidity}%'),
                Text('Pressure: ${_state.weather.mainPressure}atm'),
              ],
            ),
          ],
        ),
      )
    ]);
  }
}

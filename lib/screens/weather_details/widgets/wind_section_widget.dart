import 'package:flutter/material.dart';
import 'package:wit/cubit/weather_details/weather_details_cubit.dart';

class WindSectionWidget extends StatelessWidget {
  const WindSectionWidget({Key? key, required WeatherDetailsLoadedState state})
      : _state = state,
        super(key: key);

  final WeatherDetailsLoadedState _state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: Divider(color: Colors.blue)),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              child: const Text(
                'Wind',
                style: TextStyle(fontSize: 22),
              ),
            ),
            const Expanded(child: Divider(color: Colors.blue))
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Speed: ${_state.weather.windSpeed ?? 0}m/s'),
            Text('Degree: ${_state.weather.windDeg ?? 0}°'),
            Text('Gust: ${_state.weather.windGust ?? 0}m/s'),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wit/cubit/weather_details/weather_details_cubit.dart';
import 'package:wit/global_widgets/error_body_global_widget.dart';
import 'package:wit/models/weather_model.dart';
import 'package:wit/screens/weather_details/widgets/temperature_section_widget.dart';
import 'package:wit/screens/weather_details/widgets/weather_section_widget.dart';
import 'package:wit/screens/weather_details/widgets/wind_section_widget.dart';

class WeatherDetailsScreen extends StatelessWidget {
  const WeatherDetailsScreen(
      {Key? key,
      required WeatherDetailsCubit cubit,
      required WeatherModel weather})
      : _cubit = cubit,
        _weather = weather,
        super(key: key);

  final WeatherDetailsCubit _cubit;
  final WeatherModel _weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
            text: TextSpan(children: [
          TextSpan(text: "${_weather.name ?? ''} "),
          const TextSpan(text: 'Weather')
        ], style: const TextStyle(fontSize: 20))),
      ),
      body: BlocProvider(
        create: (context) => _cubit,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: BlocBuilder<WeatherDetailsCubit, WeatherDetailsState>(
            builder: (context, state) {
              if (state is WeatherDetailsInitialState) {
                _cubit.getWeatherDetails(_weather);
              }
              if (state is WeatherDetailsLoadedState) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      WeatherSectionWidget(state: state),
                      TemperatureSectionWidget(state: state),
                      WindSectionWidget(state: state)
                    ],
                  ),
                );
              }
              if (state is WeatherDetailsErrorState) {
                return ErrorBodyGlobalWidget(
                    onTapBtn: () => _cubit.getWeatherDetails(_weather),
                    statusCode: state.statusCode);
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wit/cubit/home/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wit/global_widgets/error_body_global_widget.dart';
import 'package:wit/screens/home/widgets/location_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required HomeCubit cubit})
      : _cubit = cubit,
        super(key: key);

  final HomeCubit _cubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Locations'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeInitialState) {
                  _cubit.getLocations();
                }
                if (state is HomeLoadedState) {
                  return ListView.separated(
                    itemCount: state.locations.length,
                    itemBuilder: (_, i) => LocationCardWidget(
                      weather: state.locations[i],
                      index: i,
                    ),
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                  );
                }
                if (state is HomeErrorState) {
                  return ErrorBodyGlobalWidget(
                    onTapBtn: () => _cubit.getLocations(),
                    statusCode: state.statusCode,
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          )),
    );
  }
}

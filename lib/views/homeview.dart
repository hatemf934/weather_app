import 'package:flutter/material.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather-states.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/noweatherinfo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/widgets/weatherinfo.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WeatherApp',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SearchView();
              }));
              // do something
            },
          )
        ],
      ),

      // intergate cubit
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return Noweatherinfo();
          } else if (state is WeatherDataLoaded) {
            return Weatherinfo(
              weatherModel: state.weatherModel,
            );
          } else {
            return const Center(
                child: Text(
              "this is error",
              style: TextStyle(fontSize: 32),
            ));
          }
        },
      ),
    );
  }
}

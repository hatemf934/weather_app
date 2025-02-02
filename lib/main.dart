import 'package:flutter/material.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather-states.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/views/homeview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    // provider cubit
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                useMaterial3: false,
                // primarySwatch: getThemeColor(
                //     BlocProvider.of<GetWeatherCubit>(context).weatherModel.condition),
                // من غير builder widget
                // مينفعش استخدم bloc provider قبل ما context تاخد البيانات لازم بعد

                // *********************** //
                //  with builder wiget
                primarySwatch: getThemeColor(
                  (BlocProvider.of<GetWeatherCubit>(context)
                      .weatherModel
                      ?.condition),
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: Homeview(),
            );
          },
        ),
      ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  } else if (condition == "Sunny" ||
      condition == "hundery outbreaks possible") {
    return Colors.amber;
  } else if (condition == "Partly cloudy" ||
      condition == "Patchy freezing drizzle possible") {
    return Colors.blueGrey;
  } else if (condition == "Cloudy") {
    return Colors.grey;
  } else if (condition == "Patchy rain possible" ||
      condition == "Patchy snow possibley" ||
      condition == "Moderate rain" ||
      condition == "Patchy light drizzle" ||
      condition == "Light drizzle" ||
      condition == "Patchy light rain" ||
      condition == "Light rain" ||
      condition == "Moderate rain at times" ||
      condition == "Heavy rain at times" ||
      condition == "Heavy rain" ||
      condition == "Light rain shower" ||
      condition == "Moderate or heavy rain shower" ||
      condition == "Torrential rain shower" ||
      condition == "Patchy light rain with thunder" ||
      condition == "Moderate or heavy rain with thunder") {
    return Colors.lightBlue;
  } else {
    return Colors.grey;
  }
}

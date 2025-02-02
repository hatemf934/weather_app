import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';

class Weatherinfo extends StatelessWidget {
  const Weatherinfo({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            getThemeColor(weatherModel.condition), // primaryColor
            getThemeColor(weatherModel.condition)[300]!,
            getThemeColor(weatherModel.condition)[100]!,
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            weatherModel.namecity,
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Text(
            "Uploted : ${weatherModel.date.hour}:${weatherModel.date.minute}",
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Column(
                children: [
                  const Text(
                    " maxtemp",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "${weatherModel.tempmax.round()}",
                    style: const TextStyle(),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "${weatherModel.temp.round()}",
                style: TextStyle(fontSize: 45),
              ),
              const Spacer(),
              Column(
                children: [
                  const Text(
                    " mintemp",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "${weatherModel.tempmin.round()}",
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            weatherModel.condition,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app/widgets/search_weather_widget.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Search a City",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        body: SearchWeatherWidget());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchWeatherWidget extends StatelessWidget {
  const SearchWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          onSubmitted: (value) {
            // trigger cubit
            var getweathercubit = BlocProvider.of<GetWeatherCubit>(context);
            getweathercubit.getcurrentweather(namecity: value);
            Navigator.pop(context);
          },
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              border: OutlineInputBorder(),
              hintText: "Enter search city",
              label: const Text(
                "search",
              ),
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 24,
                  ))),
        ),
      ),
    ));
  }
}

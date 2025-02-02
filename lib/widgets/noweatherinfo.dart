import 'package:flutter/material.dart';

class Noweatherinfo extends StatelessWidget {
  const Noweatherinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "No Weather data found ",
        style: TextStyle(
          fontSize: 32,
        ),
      ),
    );
  }
}

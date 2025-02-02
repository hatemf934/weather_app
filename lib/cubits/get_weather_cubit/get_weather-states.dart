import 'package:weather_app/models/weather_model.dart';

class WeatherStates {}

class WeatherDataLoaded extends WeatherStates {
  final WeatherModel weatherModel;

  WeatherDataLoaded({required this.weatherModel});
}

class WeatherDataFailure extends WeatherStates {}

class WeatherInitialState extends WeatherStates {}
  //create states
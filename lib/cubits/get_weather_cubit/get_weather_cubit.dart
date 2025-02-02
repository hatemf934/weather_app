import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather-states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_Services.dart';
import 'package:dio/dio.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
// create function
  getcurrentweather({required String namecity}) async {
    try {
      weatherModel =
          await WeatherServices(Dio()).getweather(namecity: namecity);

      // هيقول ل ui ان البيانات جات
      emit(WeatherDataLoaded(weatherModel: weatherModel!));
    } catch (e) {
      emit(WeatherDataFailure());
    }
  }
}
// create cubit
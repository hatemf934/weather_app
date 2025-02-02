import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  WeatherServices(this.dio);
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apikey = "e918b5835bf64153a8b145935240108";
  Future<WeatherModel> getweather({required String namecity}) async {
    try {
      final response = await dio
          .get('$baseUrl/forecast.json?key=$apikey&q=$namecity&days=1');
      Map<String, dynamic> jsondata = response.data;
      WeatherModel weatherModel = WeatherModel.fromjson(jsondata);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessagee = e.response?.data["error"]["message"] ??
          "oops there is error , try again";
      throw Exception(errorMessagee);
      
    } catch (e) {
      log(e.toString());
      throw Exception("oops there is error , try again");
    }
  }
}

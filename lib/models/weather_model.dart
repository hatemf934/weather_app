class WeatherModel {
  final double temp;
  final double tempmax;
  final double tempmin;
  final String condition;
  final String namecity;
  final DateTime date;

  const WeatherModel(
      {required this.date,
      required this.namecity,
      required this.condition,
      required this.temp,
      required this.tempmax,
      required this.tempmin});

  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      namecity: json["location"]["name"],
      condition: json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      temp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      tempmax: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      tempmin: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      // date come as string .... convert to a datetime type
      date: DateTime.parse(
        json["current"]["last_updated"],
      ),
    );
  }
}

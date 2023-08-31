import 'package:weather_flutter/models/weather_model.dart';
import 'package:dio/dio.dart';
import 'package:location/location.dart';
import 'package:weather_flutter/services/location.dart';

Future<WeatherModel?> getWeatherInfo() async {
  LocationData? locationData = await getLocation();
  String url =
      "https://api.openweathermap.org/data/2.5/weather?lat=${locationData!.latitude}&lon=${locationData.longitude}&appid=d6252210c5c5d0de96584180e2e59732&units=metric";
  try {
    var res = await Dio().get(url);
    var data = res.data;
    if (res.statusCode == 200) {
      return WeatherModel.fromJson(data);
    }
  } catch (e) {
    print('Error: $e');
  }

  return WeatherModel.fromJson({});
}

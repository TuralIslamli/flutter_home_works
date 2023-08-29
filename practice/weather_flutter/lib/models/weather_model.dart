// ignore_for_file: avoid_print

class MainWeatherInfo {
  double? temp;
  double? feelsLike;

  MainWeatherInfo.fromJson(Map<String, dynamic> json) {
    // print("MainWeatherInfo.fromJson");
    temp = json["temp"];
    feelsLike = json["feelsLike"];
  }
}

class WindInfo {
  num? speed;

  WindInfo.fromJson(Map<String, dynamic> json) {
    // print("WindInfo.fromJson");
    speed = json["speed"];
  }
}

class CloudsInfo {
  int? all;

  CloudsInfo.fromJson(Map<String, dynamic> json) {
    // print("CloudsInfo.fromJson");

    all = json["all"];
  }
}

class WeatherInfo {
  String? main;
  String? description;

  WeatherInfo.fromJson(Map<String, dynamic> json) {
    main = json["main"];
    description = json["description"];
  }
}

class WeatherModel {
  WeatherInfo? weather;
  String? name;
  MainWeatherInfo? main;
  WindInfo? wind;
  CloudsInfo? clouds;
  int? dt;

  WeatherModel.fromJson(Map<String, dynamic> json) {
    // print("WeatherModel.fromJson");

    weather = WeatherInfo.fromJson(json["weather"][0]);
    name = json["name"];
    main = MainWeatherInfo.fromJson(json["main"]);
    wind = WindInfo.fromJson(json["wind"]);
    clouds = CloudsInfo.fromJson(json["clouds"]);
    dt = json["dt"];
  }
}

// ignore_for_file: avoid_print

class MainWeatherInfo {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? humidity;
  int? pressure;

  MainWeatherInfo.fromJson(Map<String, dynamic> json) {
    temp = json["temp"];
    feelsLike = json["feels_like"];
    tempMin = json["temp_min"];
    tempMax = json["temp_max"];
    humidity = json["humidity"];
    pressure = json["pressure"];
  }
}

class WindInfo {
  num? speed;

  WindInfo.fromJson(Map<String, dynamic> json) {
    speed = json["speed"];
  }
}

class CloudsInfo {
  int? all;

  CloudsInfo.fromJson(Map<String, dynamic> json) {
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

class SysInfo {
  int? sunrise;
  int? sunset;

  SysInfo.fromJson(Map<String, dynamic> json) {
    sunrise = json["sunrise"];
    sunset = json["sunset"];
  }
}

class WeatherModel {
  WeatherInfo? weather;
  String? name;
  MainWeatherInfo? main;
  WindInfo? wind;
  CloudsInfo? clouds;
  SysInfo? sys;
  int? dt;

  WeatherModel.fromJson(Map<String, dynamic> json) {
    weather = WeatherInfo.fromJson(json["weather"][0]);
    name = json["name"];
    main = MainWeatherInfo.fromJson(json["main"]);
    wind = WindInfo.fromJson(json["wind"]);
    clouds = CloudsInfo.fromJson(json["clouds"]);
    sys = SysInfo.fromJson(json["sys"]);
    dt = json["dt"];
  }
}

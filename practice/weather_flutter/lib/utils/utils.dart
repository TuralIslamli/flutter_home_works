import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Map<String, dynamic> getdate(int timestamp) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  String formattedDate = DateFormat('dd MMM yyyy').format(dateTime);
  String formattedTime = DateFormat('h:mm a').format(dateTime);
  return {
    "dateTime": dateTime,
    "formattedDate": "$formattedDate | $formattedTime",
    "formattedTime": formattedTime
  };
}

String capitalizeFirstLetter(String input) {
  if (input.isEmpty) {
    return input;
  }

  return input[0].toUpperCase() + input.substring(1);
}

String getDayTime(int sunriseTimestamp, int sunsetTimestamp) {
  DateTime sunrise =
      DateTime.fromMillisecondsSinceEpoch(sunriseTimestamp * 1000);
  DateTime sunset = DateTime.fromMillisecondsSinceEpoch(sunsetTimestamp * 1000);
  Duration daylightDuration = sunset.difference(sunrise);

  return "${daylightDuration.inHours}h ${daylightDuration.inMinutes.remainder(60)}m";
}

bool isDay(int dt, int sunriseTimestamp, int sunsetTimestamp) {
  DateTime sunrise =
      DateTime.fromMillisecondsSinceEpoch(sunriseTimestamp * 1000);
  DateTime sunset = DateTime.fromMillisecondsSinceEpoch(sunsetTimestamp * 1000);
  DateTime currentTime = DateTime.fromMillisecondsSinceEpoch(dt * 1000);
  return currentTime.isAfter(sunrise) && currentTime.isBefore(sunset);
}

dynamic getWeatherIcon(String weatherMain, bool isDay) {
  switch (weatherMain) {
    case "Clouds":
      return Image.asset(
          "lib/assets/images/cloudy-${isDay ? "day" : "night"}.png");
    case "Clear":
      return Image.asset(
          "lib/assets/images/${isDay ? "sun" : "cloudy-night"}.png");
  }
  return Image.asset("lib/assets/images/cloudy-day.png");
}

import 'package:flutter/material.dart';
import 'package:weather_flutter/models/weather_model.dart';
import 'package:weather_flutter/utils/utils.dart';
import 'package:weather_flutter/widgets/info_card_widget.dart';

class InfoGrid extends StatelessWidget {
  const InfoGrid({super.key, required this.weatherData});
  final WeatherModel weatherData;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("lib/assets/images/cloudy-day.png"),
                Text(
                  capitalizeFirstLetter(weatherData.weather!.description!),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            Center(
              child: Text(
                "${weatherData.main!.temp!.floor()}°C",
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${weatherData.main!.tempMax!.floor()}°C",
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "${weatherData.main!.tempMin!.floor()}°C",
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            InfoCard(
              title: "Humidity",
              iconPath: "humidity",
              count: "${weatherData.main!.humidity}%",
            ),
            InfoCard(
              title: "Pressure",
              iconPath: "barometer",
              count: "${weatherData.main!.pressure}hPa",
            ),
            InfoCard(
              title: "Wind",
              iconPath: "wind",
              count:
                  "${(weatherData.wind!.speed! * 3.6).toStringAsFixed(2)}km/h",
            ),
            InfoCard(
              title: "Sunrise",
              iconPath: "sunrise",
              count: getdate(weatherData.sys!.sunrise!)["formattedTime"],
            ),
            InfoCard(
              title: "Sunset",
              iconPath: "sunset",
              count: getdate(weatherData.sys!.sunset!)["formattedTime"],
            ),
            InfoCard(
              title: "Daytime",
              iconPath: "sand-clock",
              count: getDayTime(
                  weatherData.sys!.sunrise!, weatherData.sys!.sunset!),
            ),
          ],
        ),
      ),
    );
  }
}

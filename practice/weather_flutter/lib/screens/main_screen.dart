import 'package:flutter/material.dart';
import 'package:weather_flutter/services/weather.dart';
import 'package:weather_flutter/utils/utils.dart';
import 'package:weather_flutter/widgets/header_widget.dart';
import 'package:weather_flutter/widgets/info_grid.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getWeatherInfo(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: isDay(snapshot.data!.dt!, snapshot.data!.sys!.sunrise!,
                          snapshot.data!.sys!.sunset!)
                      ? ThemeData.light()
                      : ThemeData.dark(),
                  title: "Weather app",
                  home: Scaffold(
                      body: Column(
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage(
                                "lib/assets/images/${isDay(snapshot.data!.dt!, snapshot.data!.sys!.sunrise!, snapshot.data!.sys!.sunset!) ? "day.jpg" : "night.jpg"}"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      HeaderWidget(
                        city: snapshot.data!.name!,
                        dt: snapshot.data!.dt!,
                      ),
                      InfoGrid(weatherData: snapshot.data!)
                    ],
                  )),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        });
  }
}

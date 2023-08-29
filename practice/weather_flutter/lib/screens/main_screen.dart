import 'package:flutter/material.dart';
import 'package:weather_flutter/services/weather.dart';
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
    return Scaffold(
      body: SafeArea(
          child: FutureBuilder(
              future: getWeatherInfo(),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? Column(
                        children: [
                          Image.asset(
                            "lib/assets/images/night.jpg",
                            fit: BoxFit.cover,
                            width: MediaQuery.sizeOf(context).width,
                          ),
                          HeaderWidget(
                            city: snapshot.data!.name!,
                            dt: snapshot.data!.dt!,
                          ),
                          InfoGrid()
                        ],
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      );
              })),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_flutter/utils/utils.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.city, required this.dt});
  final String city;
  final int dt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "${getdate(dt)["formattedDate"]}",
          style:const TextStyle(
            fontSize: 18,
            height: 1.5,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.location_pin,
              color: Colors.blue[400],
            ),
            Text(
              city,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue[400],
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ]),
    );
  }
}

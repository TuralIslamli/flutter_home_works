import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.iconPath,
      required this.count,
      required this.title});
  final String iconPath;
  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 40,
        height: 40,
        child: Image.asset(
          "lib/assets/images/$iconPath.png",
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        count,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
      ),
      Text(
        title,
        style: const TextStyle(fontSize: 16, color: Colors.grey),
      ),
    ]);
  }
}

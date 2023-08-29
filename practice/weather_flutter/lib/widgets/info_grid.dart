import 'package:flutter/material.dart';

class InfoGrid extends StatelessWidget {
  const InfoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(26),
        child: GridView.count(
          crossAxisCount: 1,
          children: [
            Column(
              children: [
                Image.asset("lib/assets/icons/sunny.svg"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

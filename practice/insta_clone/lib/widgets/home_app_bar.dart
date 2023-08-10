import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const Text(
            "Instagram",
            style: TextStyle(fontSize: 28),
          ),
          IconButton(
            iconSize: 24,
            alignment: Alignment.bottomLeft,
            onPressed: () {},
            icon: const Icon(FeatherIcons.chevronDown),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.heart,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.facebookMessenger,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

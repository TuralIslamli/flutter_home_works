import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> profileImages = [
    'assets/images/1.jpg',
    'assets/images/2.png',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
    'assets/images/9.png',
    'assets/images/10.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: HomeAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  profileImages.length,
                  (index) => Container(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(profileImages[index]),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

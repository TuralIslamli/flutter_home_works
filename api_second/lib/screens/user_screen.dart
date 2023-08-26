import 'package:api_second/models.dart/users_model.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserModel? userInfo;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null, "You must provide args");
    userInfo = args as UserModel;
    super.didChangeDependencies();
    super.setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fullname: ${userInfo!.firstName!}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Age: ${userInfo!.age!}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Hair: (color: ${userInfo!.hair!.color!}, type: ${userInfo!.hair!.type!})",
              style: const TextStyle(fontSize: 20),
            ),
            const Text(
              "Company:",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Name: ${userInfo!.company!.name}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Title: ${userInfo!.company!.department}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Title: ${userInfo!.company!.title}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "State: ${userInfo!.company!.address!.state}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Address: ${userInfo!.company!.address!.city} city,address: ${userInfo!.company!.address!.address}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Coordinates: lat ${userInfo!.company!.address!.coordinates!.lat}, lng: ${userInfo!.company!.address!.coordinates!.lng}",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:api_second/services.dart/get_users.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Api work 2"),
      ),
      body: FutureBuilder(
        future: getUsers(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () => Navigator.of(context).pushNamed('/user',
                            arguments: snapshot.data![index]),
                        title: Text(snapshot.data![index].firstName!));
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

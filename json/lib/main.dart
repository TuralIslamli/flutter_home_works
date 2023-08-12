import 'dart:convert';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var newsApi =
        DefaultAssetBundle.of(context).loadString('assets/api/news_api.json');

    return MaterialApp(
      home: Scaffold(
          body: FutureBuilder(
        future: newsApi,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (!snapshot.hasData) {
            return const Text('Data not found');
          }
          var news = jsonDecode(snapshot.data.toString());
          List newsList = news['newsList'];
          return ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              thickness: 3,
            ),
            itemCount: newsList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(newsList[index]['title']),
                subtitle: Text(newsList[index]['date']),
                trailing: Text(newsList[index]['viewCount'].toString()),
              );
            },
          );
        },
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:products/models/product_model.dart';
import 'package:products/services/api_requests.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<ProductModel> products = [];
  @override
  Widget build(BuildContext context) {
    (() async {
      products = (await getProducts())!;
      setState(() {});
    })();
    return MaterialApp(
      home: Scaffold(
          body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(children: [
              Text("Title: ${products[index].title}"),
              Image.network(products[index].image!),
              Text("Price: ${products[index].price}"),
            ]),
          );
        },
      )),
    );
  }
}

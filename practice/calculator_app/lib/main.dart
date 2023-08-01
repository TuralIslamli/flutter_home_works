import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    title: "My calculator",
  ));
}

class MyApp extends StatefulWidget {
  final String title;
  const MyApp({super.key, required this.title});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController firstField = TextEditingController();
  TextEditingController secondField = TextEditingController();

  String? operator;
  double? result;

  calculate() {
    debugPrint("calculate method");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              controller: firstField,
              decoration: const InputDecoration(
                hintText: "Enter value 1",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: secondField,
              decoration: const InputDecoration(
                hintText: "Enter value 2",
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {
                    operator = "+";
                  },
                  color: Colors.blue,
                  child: const Text(
                    "+",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    operator = "-";
                  },
                  color: Colors.blue,
                  child: const Text(
                    "-",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    operator = "*";
                  },
                  color: Colors.blue,
                  child: const Text(
                    "*",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    operator = "/";
                  },
                  color: Colors.blue,
                  child: const Text(
                    "/",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                calculate();
              },
              color: Colors.blue,
              child: const Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Text(result.toString()),
          ]),
        ),
      ),
    );
  }
}

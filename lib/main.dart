import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //int counter = 0;
  List<int> numbers = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff4eddb),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'click counter',
              style: TextStyle(fontSize: 30),
            ),
            for (int i in numbers)
              Text(
                '$i',
                style: TextStyle(fontSize: 40),
              ),
            IconButton(
              onPressed: () => setState(() {
                numbers.add(numbers.length);
              }),
              icon: Icon(Icons.add),
              iconSize: 40,
            )
          ],
        )),
      ),
    );
  }
}

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
  int counter = 0;

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
                Text(
                  '$counter',
                  style: TextStyle(fontSize: 30),
                ),
                IconButton(
                  onPressed: () => setState(() {
                    counter++;
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

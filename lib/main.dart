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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Stack App"),
        ),
        body: Stack(
          fit: StackFit.passthrough,
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Positioned(
              right: -40,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.red,
              ),
            ),
            Container(
              width: 60,
              height: 60,
              color: Colors.green,
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.purple,
            ),
            Positioned(
              top: 50,
              right: 50,
              child: Container(
                width: 20,
                height: 20,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

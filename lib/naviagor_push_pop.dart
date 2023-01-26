import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigatorApp(),
    );
  }
}

class NavigatorApp extends StatelessWidget {
  const NavigatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator"),
      ),
      body: const Center(
        child: Text(
          "MainPage",
          style: TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const Page1();
              },
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right),
      ),
    );
  }
}

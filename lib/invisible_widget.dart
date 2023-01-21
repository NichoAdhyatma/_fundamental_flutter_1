import 'package:flutter/material.dart';

void main() {
  runApp(const InvisibleWidget());
}
class InvisibleWidget extends StatelessWidget {
  const InvisibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column, Row , Stack",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              color: Colors.greenAccent,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.redAccent,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.yellowAccent,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.purpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}

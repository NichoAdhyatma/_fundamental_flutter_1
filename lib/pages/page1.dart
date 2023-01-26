import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  static const nameRoute = '/page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Satu"),
      ),
      body: const Center(
        child: Text(
          "Page satu",
          style: TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.arrow_circle_left),
      ),
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Grid View"),
        ),
        body: GridItem(),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  GridItem({super.key});

  final List<Container> myList = List.generate(
    20,
    (index) => Container(
      width: 150,
      color: Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    // return GridView(
    //   padding: const EdgeInsets.all(10.0),
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 3,
    //     mainAxisSpacing: 10,
    //     crossAxisSpacing: 10,
    //     childAspectRatio: 1,
    //   ),
    //   children: myList,
    // );
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(10.0),
      children: myList,
    );
  }
}

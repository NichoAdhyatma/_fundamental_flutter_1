import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Widget"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: Image.asset("images/971.jpg", fit: BoxFit.cover,),
            
            // Image.file(file)
          ),
        ),
      ),
    );
  }
}

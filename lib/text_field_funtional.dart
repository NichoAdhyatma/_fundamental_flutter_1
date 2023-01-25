import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();
  String result = "Hasil Input";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Appz"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                autofocus: true,
                controller: myController,
                onEditingComplete: () {
                  
                },
                onChanged: (value) {
                  setState(() {
                    result = value;
                  });
                },
                onSubmitted: (value) => {},
              ),
              Text(myController.text),
            ],
          ),
        ),
      ),
    );
  }
}

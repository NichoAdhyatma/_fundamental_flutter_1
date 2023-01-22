import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Container> myList = [
    Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    )
  ];

  final List<Widget> generateList = List.generate(
      10,
      (index) => Text(
            "List ke $index",
            style: const TextStyle(
              color: Colors.white,
            ),
          ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: ListView.builder(
          itemCount: generateList.length,
          itemBuilder: (context, index) => Card(
            color: const Color.fromARGB(255, 43, 43, 44),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: const FlutterLogo(
                size: 72.0,
              ),
              title: generateList[index],
              trailing: TextButton(
                onPressed: () {},
                child: const Text(
                  "Details",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              subtitle: const Text(
                "List of view",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
        ),
      ),
    );
  }
}

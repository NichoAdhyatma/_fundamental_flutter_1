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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: const FlutterLogo(size: 72.0,),
              title: Text("List - $index"),
              trailing: const Icon(Icons.more_vert),
              subtitle: const Text("List of view"),
              isThreeLine: true,
            ),
          )
        ),
      ),
    );
  }
}

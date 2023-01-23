import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Map<String, dynamic>> mylist = [
    {
      "name": "Nicholaus Adhyatma",
      "age": 19,
      "fav_color": [
        "red",
        "blue",
        "yellow",
        "red",
        "blue",
        "yellow",
      ],
    },
    {
      "name": "Dwikarna",
      "age": 29,
      "fav_color": [
        "green",
        "purple",
        "red",
      ],
    },
    {
      "name": "Eden",
      "age": 27,
      "fav_color": [
        "green",
        "purple",
        "red",
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mapping List"),
        ),
        body: ListView(
          children: mylist.map(
            (data) {
              List favColor = data["fav_color"];
              return Card(
                margin: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(),
                          const SizedBox(
                            width: 20,
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name : ${data["name"]}"),
                              Text("Age : ${data["age"]}"),
                              const SizedBox(
                                height: 10,
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: favColor
                              .map(
                                (color) => Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 0,
                                  ),
                                  child: Text(
                                    "$color",
                                    style: const TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

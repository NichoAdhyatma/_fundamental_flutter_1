import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 16;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 20),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: const Color.fromARGB(255, 4, 105, 255),
          leading: Container(
            padding: const EdgeInsets.all(10),
            child: const FlutterLogo(),
          ),
          titleSpacing: 5.0,
          title: const Text("FontSz Apz"),
          actions: [
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter = 16;
                      });
                    },
                    child: const Icon(Icons.restart_alt),
                  )
                ],
              ),
            ),
          ],
          // flexibleSpace: Container(
          //   color: Colors.greenAccent,
          //   height: 200,
          // ),
          // bottom: const PreferredSize(
          //   preferredSize: Size.fromHeight(10),
          //   child: SizedBox(height: 0),
          // ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$counter",
                style: TextStyle(fontSize: counter.toDouble()),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int initNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indec Apps"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "$initNumber",
              style: TextStyle(fontSize: initNumber.toDouble()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      initNumber++;
                    });
                  },
                  icon: const Icon(Icons.add),
                  label: Text("Size now $initNumber"),
                ),
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      initNumber > 1 ? initNumber-- : null;
                    });
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text("Kurang"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

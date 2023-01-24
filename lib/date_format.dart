import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Date Formats"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            DateFormat.yMMMEd().add_Hm().format(DateTime.now()).toString(),
          ),
        ),
      ),
    );
  }
}

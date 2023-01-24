// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        backgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text Field"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  // obscureText: true,
                  autocorrect: false,
                  autofocus: true,
                  enableInteractiveSelection: true,
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  // obscureText: true,
                  autocorrect: false,
                  autofocus: true,
                  enableInteractiveSelection: true,
                  keyboardType: TextInputType.name,
                ),
                TextField(
                  // obscureText: true,
                  autocorrect: false,
                  autofocus: true,
                  enableInteractiveSelection: true,
                  keyboardType: TextInputType.streetAddress,
                ),
                TextField(
                  // obscureText: true,
                  autocorrect: false,
                  autofocus: true,
                  enableInteractiveSelection: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
                TextField(
                  // obscureText: true,
                  autocorrect: false,
                  autofocus: true,
                  enableInteractiveSelection: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  enableSuggestions: true,
                  // ignore: avoid_print
                  onTap: () => {
                    
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const SwitchApp());

class SwitchApp extends StatefulWidget {
  const SwitchApp({super.key});

  @override
  State<SwitchApp> createState() => _SwitchAppState();
}

class _SwitchAppState extends State<SwitchApp> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Switch App"),
        ),
        body: Center(
          child: Column(
            children: [
              Switch(
                activeColor: Colors.green,
                value: status,
                onChanged: (value) {
                  setState(() {
                    status = !status;
                  });
                },
              ),
              Text(
                "Status ${status ? "ON" : "OFF"} ",
                style: const TextStyle(
                  fontSize: 32,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

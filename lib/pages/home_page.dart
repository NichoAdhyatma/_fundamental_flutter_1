import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const nameRoute = '/hompage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Home Page",
            style: TextStyle(fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Page1.nameRoute);
                },
                child: const Icon(
                  Icons.arrow_right,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

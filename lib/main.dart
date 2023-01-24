import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const TextField(
                autofocus: true,
                enableInteractiveSelection: true,
                style: TextStyle(
                  letterSpacing: 1.2,
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  label: Text("Name"),
                  hintText: "Name",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                autofocus: true,
                enableInteractiveSelection: true,
                obscureText: true,
                style: TextStyle(
                  letterSpacing: 1.2,
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.key),
                  label: Text("password"),
                  hintText: "Password",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.login,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Login",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

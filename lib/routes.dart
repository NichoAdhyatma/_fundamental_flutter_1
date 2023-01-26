import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './pages/page1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => const HomePage(),
        Page1.nameRoute: (context) => const Page1(),
      },
    );
  }
}

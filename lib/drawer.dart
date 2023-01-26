import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DrawerApp(),
    );
  }
}

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Container(color: Colors.blue),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              color: Colors.blue,
              height: 100,
              alignment: AlignmentDirectional.center,
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    child: Text(
                      "Nicholaus Adhyatma Surya Kusuma",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              leading: const Icon(
                Icons.home,
                size: 24.0,
              ),
              title: const Text(
                "Home",
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}

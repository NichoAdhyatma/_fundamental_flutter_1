import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Chat App"),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: const Text("Muhammad Sumbul"),
              leading: const CircleAvatar(),
              subtitle: const Text("hi gimana kabarmu ?"),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("12 : 10 PM"),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            const ListTile(
              title: Text("Ijat"),
              leading: CircleAvatar(),
              subtitle: Text("pp"),
              trailing: Text("12 : 10 PM"),
            ),
            const Divider(
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}

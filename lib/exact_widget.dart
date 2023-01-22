import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() => {runApp(MyApp())};

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var faker = Faker();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Exact Widget"),
        ),
        body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(
            color: Colors.black,
          ),
          itemBuilder: (BuildContext context, int index) => ChatItem(
            title: faker.person.name(),
            text: faker.lorem.sentence(),
          ),
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String title;
  final String text;
  final String imageUrl = "https://xsgames.co/randomusers/avatar.php?g=male";
  const ChatItem({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      trailing: const Text("10 : 00 AM"),
      subtitle: Text(
        text,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

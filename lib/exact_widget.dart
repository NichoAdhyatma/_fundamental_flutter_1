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
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.purple,
        textTheme: const TextTheme(
          subtitle1: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Chat-App"),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(
            color: Colors.black12,
            thickness: 1,
          ),
          itemBuilder: (BuildContext context, int index) => ChatItem(
            title: faker.person.name(),
            text: faker.lorem.sentence(),
            imageUrl: "https://api.multiavatar.com/$index.png",
          ),
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String title;
  final String text;
  final String imageUrl;
  const ChatItem(
      {super.key,
      required this.title,
      required this.text,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      trailing:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  const [
          Text("10 : 00 AM"),
          SizedBox(
            height: 5.0,
          ),
          Icon(Icons.circle, color: Colors.purple,),
        ],
      ),
      subtitle: Text(
        text,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

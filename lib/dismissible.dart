import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/exact_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Dissmisible(),
    );
  }
}

class Dissmisible extends StatelessWidget {
  const Dissmisible({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dissmisible"),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          color: Colors.black12,
        ),
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(
              index.toString(),
            ),
            direction: DismissDirection.endToStart,
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Yakin ingin di hapus ?"),
                    content: const Text("Pesan ini akan dihapus!"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          return Navigator.of(context).pop(true);
                        },
                        child: const Text("Yes"),
                      ),
                      TextButton(
                        onPressed: () {
                          return Navigator.of(context).pop(false);
                        },
                        child: const Text("No"),
                      ),
                    ],
                  );
                },
              );
            },
            background: Container(
              alignment: Alignment.centerRight,
              color: Colors.red,
              padding: const EdgeInsets.only(right: 10),
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            child: ChatItem(
              title: faker.person.name(),
              text: faker.lorem.sentence(),
              imageUrl: "https://api.multiavatar.com/$index.png",
            ),
          );
        },
      ),
    );
  }
}

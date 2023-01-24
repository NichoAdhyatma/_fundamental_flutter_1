import 'package:flutter/material.dart';
import 'package:flutter_application_1/exact_widget.dart';
import 'package:faker/faker.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var faker = Faker();
  List<Widget> myTab = [
    const Tab(
      text: "Home",
    ),
    const Tab(
      text: "Chat",
    ),
    const Tab(
      text: "Profile",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: DefaultTabController(
        initialIndex: 1,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "Ngoding Yuks",
              style: TextStyle(color: Colors.purple),
            ),
            bottom: TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              unselectedLabelColor: Colors.purple,
              indicator: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              labelColor: Colors.white,
              tabs: myTab,
            ),
            centerTitle: true,
            toolbarHeight: 90,
          ),
          body: TabBarView(
            children: [
              const Center(
                child: Text("Home"),
              ),
              ListView.separated(
                itemCount: 6,
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1,
                  color: Colors.black12,
                ),
                itemBuilder: ((context, index) => ChatItem(
                      title: faker.person.name(),
                      text: faker.lorem.sentence(),
                      imageUrl: "https://api.multiavatar.com/$index.png",
                    )),
              ),
              const Center(
                child: Text("Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

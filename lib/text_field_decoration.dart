import 'package:flutter/material.dart';
import 'package:flutter_application_1/exact_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color darkMode = const Color.fromARGB(160, 68, 68, 70);
  Brightness mode = Brightness.dark;
  bool isDarkMode = true;
  List<Widget> myTab = const [
    Tab(
      text: "Login",
    ),
    Tab(
      text: "Chat",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: mode,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: darkMode,
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: const Text("Quiz App"),
            bottom: TabBar(
              indicatorWeight: 2.0,
              tabs: myTab,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: IconButton(
                  icon: const Icon(Icons.dark_mode),
                  onPressed: () {
                    setState(() {
                      if (isDarkMode) {
                        darkMode = const Color.fromARGB(255, 239, 239, 241);
                        mode = Brightness.light;
                      } else {
                        darkMode = const Color.fromARGB(160, 68, 68, 70);
                        mode = Brightness.dark;
                      }
                      isDarkMode = !isDarkMode;
                    });
                  },
                ),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Padding(
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
                        icon: Icon(
                          Icons.person,
                        ),
                        label: Text(
                          "Name",
                        ),
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
                        icon: Icon(
                          Icons.key,
                        ),
                        label: Text(
                          "password",
                        ),
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
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: ((context, index) => ChatItem(
                    title: "title",
                    text: "text",
                    imageUrl: "https://api.multiavatar.com/$index.png")),
              )
            ],
          ),
        ),
      ),
    );
  }
}

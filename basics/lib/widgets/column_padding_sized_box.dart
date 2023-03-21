import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.blueGrey)),
        home: Scaffold(
          appBar:
              AppBar(centerTitle: true, title: const Text("Flutter Basics")),
          body: Container(
            color: Colors.pink,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    color: Colors.green,
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text("First Column child"),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: const Center(
                      child: Text('Hello World!!!',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                          )),
                    )),
                const SizedBox(
                  height: 40,
                ),
                const Text("Last column")
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () => debugPrint('clicked'),
              child: const Icon(Icons.pentagon)),
        ));
  }
}

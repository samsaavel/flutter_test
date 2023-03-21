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
            color: Colors.white,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    const Expanded(
                        flex: 2,
                        child: Text(
                          "Aurora Boreal - Canada and Norway, anadimos mas texto para lograr un efecto visual",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )),
                    Container(height: 20, width: 20, color: Colors.amber),
                    const SizedBox(width: 10),
                    Container(height: 20, width: 20, color: Colors.redAccent),
                    const SizedBox(
                      width: 10,
                    )
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
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
                    height: 20,
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/images/experiment.jpeg',
                        fit: BoxFit.cover),
                  ),
                  const Positioned(
                    top: 80,
                    left: 20,
                    child: Text('Sky full of stars,'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/640x/94/d0/90/94d0900ce031949f452fc010708b490e.jpg'))),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                      height: 400,
                      width: 100,
                      color: Colors.green,
                      child: const Text("Placeholder")),
                  const Expanded(child: Text("example"))
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () => debugPrint('clicked'),
              child: const Icon(Icons.pentagon)),
        ));
  }
}

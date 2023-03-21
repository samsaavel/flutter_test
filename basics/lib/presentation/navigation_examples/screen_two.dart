import 'package:basics/presentation/navigation_examples/screen_one.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen Two'),
          //backgroundColor: Colors.blue.shade800,
        ),
        body: Center(
            child: TextButton(
          child: const Text('Go to Screen One'),
          onPressed: () {
            // Navigator.pushReplacement(context,
            //     MaterialPageRoute(builder: ((context) => const ScreenOne())));
            //go back until dashboard
            Navigator.pushReplacementNamed(context, '/screenOne');
            Navigator.pushNamed(context, '/screenOne');
          },
        )));
  }
}

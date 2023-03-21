import 'package:flutter/material.dart';

class ButtonExamples extends StatefulWidget {
  const ButtonExamples({Key? key}) : super(key: key);

  @override
  State<ButtonExamples> createState() => _ButtonExamplesState();
}

class _ButtonExamplesState extends State<ButtonExamples> {
  bool switchState = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            // style: ButtonStyle(
            //     backgroundColor: MaterialStateColor.resolveWith(
            //         (states) => Colors.purple.shade200)),
            onLongPress: () {
              print("Long Pressed");
            },
            onPressed: () {
              print("TextButton pressed");
            },
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "TextButton ",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ))
            //Container(height: 20, width: 60, color: Colors.red[300]),
            ),
        IconButton(
          onPressed: () {
            // ignore: avoid_print
            print("Icon pressed");
          },
          icon: const Icon(Icons.play_arrow),
        ),
        Switch(
            value: switchState,
            onChanged: (value) {
              switchState = value;
              setState(() {});
            })
      ],
    );
  }
}

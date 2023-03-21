import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 300,
        color: Colors.pink,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
                child: Container(
              color: Colors.lightBlue,
              width: constraints.maxWidth * 0.8,
              height: constraints.maxHeight / 2,
              child: const Center(child: Text("Layout Builder Example")),
            ));
          },
        ));
  }
}

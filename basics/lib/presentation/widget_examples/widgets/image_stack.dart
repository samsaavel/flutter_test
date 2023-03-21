import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child:
              Image.asset('assets/images/experiment.jpeg', fit: BoxFit.cover),
        ),
        const Positioned(
          top: 80,
          left: 20,
          child: Text('Sky full of stars,'),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ImageProfileAvatar extends StatelessWidget {
  const ImageProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 100,
        width: 100,
        child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/640x/94/d0/90/94d0900ce031949f452fc010708b490e.jpg')));
  }
}

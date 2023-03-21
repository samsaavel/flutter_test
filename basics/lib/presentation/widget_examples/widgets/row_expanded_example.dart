import 'package:flutter/material.dart';

class RowExpandedExample extends StatelessWidget {
  const RowExpandedExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
    ]);
  }
}

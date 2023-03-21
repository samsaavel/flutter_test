import 'package:flutter/material.dart';

class Sunshine extends StatelessWidget {
  final double radius;
  final Widget child;
  const Sunshine({Key? key, required this.radius, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
      child: Center(child: child),
    );
  }
}

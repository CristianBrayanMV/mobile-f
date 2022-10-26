import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  double radius;
  List<Color> colors;
  CircleWidget({required this.radius, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
        boxShadow: [BoxShadow(
          color: colors.first.withOpacity(0.65),
          blurRadius: 12.0,
          offset: Offset(0,5),
        ),],
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: colors,
        ),
      ),
    );
  }
}

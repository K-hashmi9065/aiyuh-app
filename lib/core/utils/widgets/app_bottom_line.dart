import 'package:flutter/material.dart';

class AppBottomLine extends StatelessWidget {
  final double width;
  final double? height;
  final Color color;
  const AppBottomLine({super.key, required this.width, this.height = 8, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2.5),
      ),
    );
  }
}

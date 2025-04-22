import 'package:aiyuh_app/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppCustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  const AppCustomText({super.key, required this.text, required this.fontSize, this.fontWeight,  this.color = AppColors.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}

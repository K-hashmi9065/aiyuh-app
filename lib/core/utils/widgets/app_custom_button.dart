import 'package:aiyuh_app/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppCustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? shadowColor;
  
  const AppCustomButton({
    super.key, 
    required this.text, 
    required this.onTap, 
    required this.width, 
    this.height = 60,
    this.backgroundColor,
    this.textColor,
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
        
          borderRadius: BorderRadius.circular(25),
          gradient: AppColors.backgroundColor,
        
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: textColor ?? AppColors.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
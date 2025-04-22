import 'package:aiyuh_app/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SwitchLogToSignup extends StatelessWidget {
  final String rightText;
  final String leftText;
  final Color? color;
  const SwitchLogToSignup({
    super.key,
    required this.rightText,
    required this.leftText, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 35,),
          Container(
            width: 180,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                rightText,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {},
            child:  Container(
            width: 180,
            height: 50,
            decoration: BoxDecoration(
            
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                leftText,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColor,
                ),
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}

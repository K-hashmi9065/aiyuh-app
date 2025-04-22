import 'package:aiyuh_app/core/utils/constants/colors.dart';
import 'package:aiyuh_app/core/utils/widgets/app_bottom_line.dart';
import 'package:aiyuh_app/core/utils/widgets/app_custom_button.dart';
import 'package:aiyuh_app/core/utils/widgets/app_custom_text.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.scaffoldBackgroundColor,
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Top image
             AppCustomText(
                text: 'Discover the Ancient \n Wisdom of the Vedas \n with AI',
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),

              // Spacer to push content to bottom
              Spacer(),

              // Bottom section with image and dots
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Center image placed just above the dots
                  Image.asset(
                    'assets/images/background/splash-bottom-img.png',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(height: 20),
                  AppCustomButton(
                    text: 'Get Started',
                    onTap: () {
                   
                    },
                     width: 180,
                     textColor: AppColors.textColor,
                  ), // Custom button
                  SizedBox(height: 20), // Space between button and dots
                  // Three dot container
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     AppBottomLine(width: 25, color: Color(0xFF003F47)),
                      AppBottomLine(width: 45, color: Color(0xFF0091D5)),
                      AppBottomLine(width: 25, color: Color(0xFF003F47)),
                     
                       
                    ],
                  ),
                  SizedBox(height: 40), // Bottom padding
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
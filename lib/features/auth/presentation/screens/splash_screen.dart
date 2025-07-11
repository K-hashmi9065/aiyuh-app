import 'package:aiyuh_app/core/utils/constants/colors.dart';
import 'package:aiyuh_app/core/utils/widgets/app_bottom_line.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.scaffoldBackgroundColor),
        child: SafeArea(
          child: Column(
            children: [
              // Top image
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Image.asset(
                  'assets/images/background/splash-top-img.png',
                  width: 250,
                  height: 150,
                ),
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
                    width: 250,
                    height: 200,
                  ),
                  SizedBox(height: 20), // Space between image and dots

                  SizedBox(height: 20), // Space between image and dots
                  // Three dot container
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppBottomLine(width: 45, color: Color(0xFF0091D5)),
                      AppBottomLine(width: 25, color: Color(0xFF003F47)),
                      AppBottomLine(width: 25, color: Color(0xFF003F47)),
                    ],
                  ),
                  SizedBox(height: 50), // Bottom padding
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

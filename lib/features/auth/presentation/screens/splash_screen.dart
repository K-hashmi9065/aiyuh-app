import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFB7EFFE),
              Color(0xFFCDF5FD),
              Color(0xFFCEF6FD),
              Color(0xFF64D9FE),
              Color(0xFFCFF6FD),
              Color(0xFFB4EFFE),
              Color(0xFFF1FFFD),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Top image
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Image.asset(
                  'assets/images/background/splash-top-img.png',
                  width: 100,
                  height: 50,
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
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(height: 20), // Space between image and dots
                  // Three dot container
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 5,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFF0091D5),
                          borderRadius: BorderRadius.circular(2.5),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 5,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFF0091D5).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(2.5),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 5,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFF0091D5).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(2.5),
                        ),
                      ),
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

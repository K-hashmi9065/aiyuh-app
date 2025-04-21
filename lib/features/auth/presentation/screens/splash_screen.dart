import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/splash-top-img.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              Container(
                child: Image.asset(
                  'assets/images/splash-bottom-img.png',
                  width: 200,
                  height: 200,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
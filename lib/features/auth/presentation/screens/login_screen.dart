// ignore_for_file: avoid_print

import 'package:aiyuh_app/core/utils/constants/colors.dart';
import 'package:aiyuh_app/core/utils/widgets/app_bottom_line.dart';
import 'package:aiyuh_app/core/utils/widgets/app_custom_button.dart';
import 'package:aiyuh_app/core/utils/widgets/app_custom_text.dart';
import 'package:aiyuh_app/core/utils/widgets/app_custom_text_field.dart';
import 'package:aiyuh_app/core/utils/widgets/switch_log_to_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final bool? value;

  LoginScreen({super.key,  this.value = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.backgroundColor),
        child: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.vertical,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/background/splash-top-img.png',
                              width: 200,
                              height: 80,
                            ),
                            const AppCustomText(
                              text: 'Welcome Back',
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SwitchLogToSignup(rightText: 'Login',color: AppColors.primaryColor, leftText: 'Sign Up',),
                              SizedBox(height: 25),
                              const Text(
                                'Email or Phone Number',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: AppColors.textColor,
                                ),
                              ),
                              AppCustomTextField(
                                controller: _emailController,
                                hintText: 'abc@gmail.com',
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  if (!value.contains('@')) {
                                    return 'Please enter a valid email';
                                  }
                                  return null;
                                },
                                suffix: TextButton(
                                  onPressed: () {
                                    // Always show OTP option
                                    print('Sending OTP option selected');
                                  },
                                  child: const Text(
                                    'Sign In using OTP',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 25),
                              // Custom text field for password
                              const Text(
                                'Password',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: AppColors.textColor,
                                ),
                              ),
                              AppCustomTextField(
                                controller: _passwordController,
                                hintText: '********',
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  if (value.length < 6) {
                                    return 'Password must be at least 6 characters';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 15),
                      
                              
                            ],
                          ),
                        ),
                               Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center, // Aligns vertically
  children: [
    // Checkbox + Text Group
    Row(
      children: [
        Checkbox(
          value: value, 
          onChanged: (value) {},
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduces extra padding
        ),
        // Spacing between checkbox and text
        AppCustomText(
          text: 'Keep me Signed In', 
          fontSize: 25,
        ),
      ],
    ),
    
    // Forgot Password
    InkWell(
      onTap: () {}, // Add your onTap logic
      child: AppCustomText(
        text: 'Forgot Password', 
        fontSize: 25,
      ),
    ),
  ],
),

                        AppCustomButton(
                          text: 'Sign In',
                          onTap: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              final email = _emailController.text;
                              final password = _passwordController.text;
                              // Authentication logic here
                            }
                          },
                          width: 200,
                        ),

                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Sign in with',style: TextStyle(fontSize: 15),),
                           Row(
                            
                            children: [ SvgPicture.asset(
                              'assets/svg/facebook.svg',
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 8,),
                              SvgPicture.asset(
                              'assets/svg/google.svg',
                              width: 50,
                              height: 50,
                            ),
                              SizedBox(width: 8,),
                              SvgPicture.asset(
                              'assets/svg/apple.svg',
                              width: 50,
                              height: 50,
                            ),],
                           )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 50),
                        // Bottom section with image and dots
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppBottomLine(
                              width: 25,
                              color: const Color(0xFF003F47),
                            ),
                            AppBottomLine(
                              width: 25,
                              color: const Color(0xFF003F47),
                            ),
                            AppBottomLine(
                              width: 45,
                              color: const Color(0xFF0091D5),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppColors {
  static const LinearGradient scaffoldBackgroundColor = LinearGradient(
    colors: [
      Color(0xFF64D9FE),
      Color(0xFFB7EFFE),
      Color(0xFFCEF6FD),
      Color(0xFFCDF5FD),

      Color(0xFFCFF6FD),
      Color(0xFFB4EFFE),
      Color(0xFFF1FFFD),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const LinearGradient backgroundColor = LinearGradient(
    colors: [
      Color(0xFF64D9FE),
      Color(0xFFCFF6FD),
      Color(0xFFB4EFFE),
      Color(0xFFF1FFFD),
      Color(0xFF64D9FE),
      Color(0xFFCDF5FD),
      Color(0xFFCEF6FD),
      Color(0xFFB7EFFE),
      Color(0xFF64D9FE),
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );

  static const Color primaryColor = Color(0xFF0091D5);
  static const Color secondaryColor = Color(0xFFFFFFFF);
  static const Color textColor = Color(0xFF003F47);
  static const Color errorColor = Color(0xFFB00020);
  static const Color successColor = Color(0xFF00C853);
  static const Color warningColor = Color(0xFFFFA000);
}

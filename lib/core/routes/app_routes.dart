import 'package:aiyuh_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
   
    
    }
  }
}
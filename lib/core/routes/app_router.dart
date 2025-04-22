
import 'package:aiyuh_app/core/routes/app_routes.dart';
import 'package:aiyuh_app/features/auth/presentation/screens/login_screen.dart';
import 'package:aiyuh_app/features/auth/presentation/screens/signup_screen.dart';
import 'package:aiyuh_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:aiyuh_app/features/auth/presentation/screens/starting_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.start:
        return MaterialPageRoute(builder: (_) => const StartingScreen());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) =>  LoginScreen());
      case AppRoutes.signup:
        return MaterialPageRoute(builder: (_) =>  SignUpScreen());
      default:
        return _errorRoute(settings.name);
    }
  }

  static Route<dynamic> _errorRoute(String? routeName) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('No route defined for $routeName'),
        ),
      ),
    );
  }
}
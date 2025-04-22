import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void goBack() {
    navigatorKey.currentState!.pop();
  }

  void navigateToHome() {
    navigatorKey.currentState!.pushReplacementNamed('/home');
  }
}

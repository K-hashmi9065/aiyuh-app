// app_state_provider.dart
import 'package:flutter/material.dart';

class AppStateProvider extends ChangeNotifier {
  bool _isSplashComplete = false;
  bool _isLoggedIn = false;

  bool get isSplashComplete => _isSplashComplete;
  bool get isLoggedIn => _isLoggedIn;

  void completeSplash() {
    _isSplashComplete = true;
    notifyListeners();
  }

  void login() {
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
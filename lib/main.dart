import 'package:aiyuh_app/core/routes/app_routes.dart';
import 'package:aiyuh_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:aiyuh_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await init();

  runApp(
    MultiProvider(
      providers: [
       Provider<AppRouter>(create: (_) => AppRouter()),
      ],
      child: SplashScreen(),
    ),
  );
}

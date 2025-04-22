import 'package:aiyuh_app/core/routes/app_routes.dart';
import 'package:aiyuh_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:aiyuh_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  runApp(
    MultiProvider(
      providers: [Provider<AppRouter>(create: (_) => AppRouter())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Arch + Provider',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
      // Replace with your actual screen ); } }
    );
  }
}

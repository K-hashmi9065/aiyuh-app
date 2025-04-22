import 'package:aiyuh_app/core/routes/app_router.dart';
import 'package:aiyuh_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:aiyuh_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  runApp(
    MultiProvider(
      providers: [
        Provider<AppRouter>(create: (_) => AppRouter()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = Provider.of<AppRouter>(context);
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorObservers: [AppRouter.routeObserver],
      onGenerateRoute: appRouter.onGenerateRoute,
      initialRoute: '/',
      title: 'Clean Arch + Provider',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}

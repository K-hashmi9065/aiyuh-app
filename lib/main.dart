import 'package:aiyuh_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => sl<UserProvider>()),
      ],
      child: MyApp(),
    ),
  );
}

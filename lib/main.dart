import 'package:flutter/material.dart';
import 'package:imarika_sacco_mobile_app/splash_screen_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreenPage(),
      title: 'Imarika Sacco',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 231, 230, 233),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(103, 58, 183, 1)),
        useMaterial3: true,
      ),
    );
  }
}

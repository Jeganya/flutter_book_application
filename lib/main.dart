import 'package:flutter/material.dart';
import 'package:time_power_application/splash_screen.dart';
import 'pv_quotes_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.teal,
      home: SplashScreen(),
    );
  }
}

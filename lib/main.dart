import 'package:flutter/material.dart';
import 'SplashScreen.dart';

void main() {
  runApp( const RainbowApp());
}

class RainbowApp extends StatelessWidget {
  const RainbowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}



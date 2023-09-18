import 'dart:async';
import 'package:flutter/material.dart';
import 'MainDashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  var _hight;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:4), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainDashboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    _hight = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                fit: BoxFit.cover,
                height: _hight * 0.972,
                width: double.infinity,
                image: AssetImage('images/stock/R6SplashScreen.png'),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
import 'dart:async';
import 'package:dairy_app/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToMainScreen();
  }

  Future<void> _navigateToMainScreen() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate a splash delay

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => MyApp()), // Replace with your main app widget
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/splash_image.jpg', // Replace with your splash image
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Your Quote Here', // Replace with your splash quote
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

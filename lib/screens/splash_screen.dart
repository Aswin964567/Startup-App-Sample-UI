import 'dart:async';

import 'package:flutter/material.dart';
import 'package:startup/screens/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    // Add a delay to simulate the splash screen duration
    Timer(Duration(seconds: 3), () {
      // Navigate to the main/home screen after the splash screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => StartScreen()), // Replace with your main/home screen widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: 414,
        // height: 896,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffff7070), Color(0xffff4f4f)],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/moon_cloud2.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/cloud.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

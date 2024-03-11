import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startup/screens/splash_screen.dart';


void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFFF5F8FF),
            textTheme: GoogleFonts.montserratTextTheme()),
        home: const SplashScreen(),),
  );
}

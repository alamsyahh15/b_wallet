import 'package:b_wallet/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          actionsIconTheme: IconThemeData(color: Colors.black),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: const HomeScreen(),
    ),
  );
}

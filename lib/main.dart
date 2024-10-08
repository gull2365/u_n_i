import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
            fontFamily: 'parisienne',
            fontSize: 80,
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.w700,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      home: const HomeScreen(),
    ),
  );
}

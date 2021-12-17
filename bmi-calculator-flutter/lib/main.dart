// import 'dart:html';
import 'input.dart';

import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          colorScheme: ColorScheme.dark(),
          textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white),
          ),
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.purple,
          ),
        ),
      home: InputPage(),
    );
  }
}


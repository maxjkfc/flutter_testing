import 'package:bmi_calculator/page/input.dart';
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
          // sliderTheme: SliderThemeData(
            // activeTrackColor: Colors.white,
            // inactiveTrackColor: Color(0xFF8D8E98),
            // thumbColor: Color(0xFFEB1555),
            // overlayColor: Color(0x29EB1555),
            // thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            // overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          // )
          ),
      home: InputPage(),
      // initialRoute: '/',
      // routes: {
        // '/': (context)=> InputPage(),
        // '/result': (context)=> ResultPage(),
      // },
    );
  }
}


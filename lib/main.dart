import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/results_page.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        theme: ThemeData.dark().copyWith(
// uncomentingh this will affect all sliders in the app
//      theme: ThemeData.dark().copyWith(
//        sliderTheme: SliderTheme.of(context).copyWith(
//        thumbColor: Color(0xFFEB1555),
//        activeTrackColor: Colors.white,
//        overlayColor: Color(0x29EB1555),
//        thumbShape:
//        RoundSliderThumbShape(enabledThumbRadius: 15.0),
//        overlayShape:
//        RoundSliderOverlayShape(overlayRadius: 30.0),
//      ),
            primaryColor: Color(0xFF0A0E21),
            scaffoldBackgroundColor: Color(0xFF0A0E21),
            accentColor: Colors.purple,
            textTheme: TextTheme(
              body1: TextStyle(color: Colors.white),
            )),
        routes: {
          '/': (context) => InputPage(),
          '/results': (context) => ResultsPage(),
        });
  }
}

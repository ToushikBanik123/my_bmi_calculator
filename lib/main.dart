import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        bottomAppBarColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      // home is not needed because i used initialRoute
      home: InputPage(),
    );
  }
}

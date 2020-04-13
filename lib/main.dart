import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input_page.dart';
import 'results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  ThemeData themeSelector() {
    return ThemeData.dark().copyWith(
      primaryColor: Color(0xFF2c003e),
      scaffoldBackgroundColor: Color(0xFF2c003e),
    );
  }

  @override
  Widget build(BuildContext context) {
    // LOCK THE ORIENTATION
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: themeSelector(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        // '/results' :(context) => ResultsPage()
      },
    );
  }
}

// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // Define the primary color for the app
          primaryColor: const Color(0xFF0A0E21),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: const InputPage(),
    );
  }
}

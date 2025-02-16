import 'package:flutter/material.dart';
import 'components/input_file.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData(
         useMaterial3: true,
       colorScheme: const ColorScheme.dark().copyWith(
         secondary: const Color(0xff0a0e21),
         primary: const Color(0xff0a0e21),
       ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xff0a0e21),elevation: 0.7,shadowColor: Colors.black),
      ),
    );
  }
}

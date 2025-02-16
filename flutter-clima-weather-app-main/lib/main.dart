import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clima/screens/screens.dart';
import 'package:flutter_clima/utilities/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light,
    );

    return MaterialApp(
      title: 'Flutter Clima',
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: kTealColor,          // Seed color for generating the color scheme
        brightness: Brightness.dark,    // Ensures a dark theme
        primary: kPrimaryDarkColor,     // Explicitly set primary color
        secondary: kTealColor,          // This replaces the accentColor in M3
      ),
      scaffoldBackgroundColor: kPrimaryDarkColor, // Custom scaffold background color
        // Enable Material 3
    ),
      home: LoadingScreen(
        fromPage: 'location',
      ),
    );
  }
}

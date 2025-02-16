import 'package:flutter/material.dart';
import 'package:navigator_flutter_demo/practice.dart';
import 'screen1.dart';
import 'screen0.dart';
import 'screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',//if home property define then routes table can not include that home entry point '/'
      routes: {
        '/':(context)=>Screen0(),
        '/screen1':(context)=>Screen1(),
        '/screen2':(context)=>Screen2(),
        '/practice':(context)=>practice()
      },
    );
  }
}

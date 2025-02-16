import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              '     Hello\n Krishnakant',
              style: TextStyle(color: Colors.amberAccent),
            ),
          ),
          backgroundColor: Colors.blue[400],
        ),
        body: Center(
          child: Container(
            child: Center(
              child: Text(
                '   hello my name is krishnakant',
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
                overflow:TextOverflow.ellipsis,
              ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.purple, borderRadius: BorderRadius.circular(20)),
            height: 300,
            width: 300,
          ),
          // heightFactor: 1,
          // widthFactor: 1,
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}

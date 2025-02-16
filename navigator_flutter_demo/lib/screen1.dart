import 'package:flutter/material.dart';
import 'screen2.dart';
import 'constant.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redcolor,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor:redcolor, ),
          child: Text('Go Forwards To Screen 2'),
          onPressed: () {
            Navigator.pushNamed(context, '/screen2');
            },
        ),
      ),
    );
  }
}

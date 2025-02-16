import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class practice extends StatelessWidget {
  const practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Expanded(
            child: Container(
            child: Center(child: Text('hello')),
            color: Colors.blue,
              ),
          ),
            // Expanded(
            //   child: Container(
            //     child: Text('hello krishnakant'),
            //     color: Colors.blue,
            //   ),
            // ),
          ]
        ),
      ),
    );
  }
}

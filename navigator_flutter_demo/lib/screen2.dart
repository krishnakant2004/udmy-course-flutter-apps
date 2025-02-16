import 'package:flutter/material.dart';

import 'constant.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bluecolor,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: ElevatedButton(
         style: ElevatedButton.styleFrom(backgroundColor: bluecolor,),
          child: Text('Go Back To Screen 1'),
          onPressed: () {
           Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

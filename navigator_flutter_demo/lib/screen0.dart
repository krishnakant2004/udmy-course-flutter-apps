import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';

import 'constant.dart';

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen 0'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
             style: ElevatedButton.styleFrom(backgroundColor: redcolor,),
              child: Text('practice_page'),
              onPressed: () {
               Navigator.pushNamed(context, '/practice');
                    //Navigate to Screen 1
              },
            ),
            ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: bluecolor,),
              child: Text('Go To Screen 2'),
              onPressed: () {
                Navigator.pushNamed(context, '/screen2');
                //Navigate to Screen 2
              },
            ),
          ],
        ),

      ),
    );
  }
}

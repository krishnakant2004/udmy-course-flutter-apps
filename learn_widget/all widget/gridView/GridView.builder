//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> l0 = [1, 2, 3, 4, 5, 6, 7];
  List<String> l1 = [
    'mohan',
    'krishnakant',
    'vinay',
    'deveraj',
    'arjun',
    'satyam',
    'deepanshu'
  ];
  List<String> l2 = [
    'hi',
    'hello',
    'how are you',
    'kaha ho',
    'hello arjun',
    'monu',
    'kab ana he'
  ];

  List<Color> color_list = [
    Colors.white,
    Colors.blue,
    Colors.orange,
    Colors.pinkAccent,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.deepPurpleAccent
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(
            backgroundColor: Color(0xFF9b3dd3),
            title: Text('T E S T'),
            titleTextStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF44bd32),
            ),
            centerTitle: true,
          ),
          body: Column(
            mainAxisSize:MainAxisSize.max ,
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemCount: color_list.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: color_list[index],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 30,),

              Expanded(
                child: Container(
                  height: 200,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: color_list.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: color_list[index],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 20,
          shadowColor: Colors.black,
          title: const Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body:  DicePage(),
      ),
    );
  }
}


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dicenumber1=1;
  int dicenumber2=1;
  void changestate(){
    setState(() {
      dicenumber1=1+Random().nextInt(6);
      dicenumber2=1+Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                changestate();
              },
              child: Image.asset(
                'images/dice$dicenumber1.png',
              ),
            ),
            flex: 1,  // size of one image with ratio of other
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                  changestate();
              },
              child: Image.asset('images/dice$dicenumber2.png'),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}



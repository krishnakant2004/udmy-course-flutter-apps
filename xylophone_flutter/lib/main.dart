import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void button_pressed(int num){
      final audio = AudioPlayer();
      audio.play(AssetSource('note$num.wav'));
  }
  @override
  Widget build(BuildContext context) {
    Expanded buildwidget({Color color=Colors.red,int num=1}){
        return Expanded(
          child: MaterialButton(
              color: color,
              enableFeedback: false,
              onPressed: () {
                button_pressed(num);
              }
          ),
        );
      }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildwidget(color:Colors.red,num:1),
              buildwidget(color:Colors.blueGrey,num:2),
              buildwidget(color:Colors.yellow,num:3),
              buildwidget(color:Colors.green,num:4),
              buildwidget(color:Colors.green.shade900,num:5),
              buildwidget(color:Colors.red.shade300,num:6),
              buildwidget(color:Colors.brown,num:7),
            ],
          ),
        ),
      ),
    );
  }
}

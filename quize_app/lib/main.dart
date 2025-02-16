import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:quize_app/home_screen.dart';
import 'package:quize_app/questions_file/questions.dart';
import 'package:quize_app/screens/question_screen.dart';
import 'package:quize_app/screens/result_screen.dart';
void main() {
  runApp(const MyQuizeApp());
}

class MyQuizeApp extends StatefulWidget {

  const MyQuizeApp({super.key});

  @override
  State<MyQuizeApp> createState() {
    return _MyQuizeAppState();
  }
}

class _MyQuizeAppState extends State<MyQuizeApp> {
  @override
  var screen='Home-Screen';
  final questions=all_Questions;
  final List<String> _user_answer=[];

  void save_user_answer(String ans){
    _user_answer.add(ans);
    if(questions.length==_user_answer.length){
      setState(() {
        screen="result-screen";
      });
    }
  }

   void ontap_start(){
    setState(() {
      screen="question-screen";
    });
  }

   void ontap_restart(){
    setState(() {
      _user_answer.clear();
      screen="Home-Screen";
    });
  }


  @override
  Widget build(context) {
    Widget screen_widget=HomeScreen(ontap: ontap_start);
    if(screen=="question-screen"){
      screen_widget=question_screen(store_answer: save_user_answer,);
    }else if(screen=="result-screen"){
      screen_widget=result(_user_answer,ontap:ontap_restart ,);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 84, 17, 147),
                const Color.fromARGB(255, 49, 11, 84),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child:screen_widget,
        ),
      ),
    );
  }
}

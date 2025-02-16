import 'package:flutter/material.dart';

import '../constants.dart';
import '../questions_file/questions.dart';

class question_screen extends StatefulWidget {
  const question_screen({super.key,required this.store_answer});

   final void Function(String ans) store_answer;
  @override
  State<question_screen> createState() => _question_screenState();
}

class _question_screenState extends State<question_screen> {
  var index = 0;
  _ontap(String ans){
    widget.store_answer(ans);
    setState(() {
      index++;
    });
  }
  @override
  Widget build(BuildContext context) {
    final current_question = all_Questions[index];
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            current_question.text,
            textAlign: TextAlign.center,
            style: largetextstyle,
          ),
         const SizedBox(
            height: 30,
          ),
          ...current_question.Shuffled_answer.map((element) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 7),
              child: TextButton(
                onPressed:(){
                  _ontap(element);
                  },
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 31, 10, 52),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,),
                  child: Text(
                    element,
                    style:const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../Answer_display/Answer_items.dart';
import '../Buttons/start_restart_button.dart';
import '../questions_file/questions.dart';

class result extends StatelessWidget {
  const result(this.answers,{required this.ontap,super.key});

  final List<String> answers;
  final void Function()? ontap;
  List<Map<String,Object>> get generateAnswer{
    int size=answers.length;
    List<Map<String,Object>> list=[];
    for(int i=0;i<size;i++){
      list.add(
        {
          "Question-index":i,
          "text":all_Questions[i].text,
          "Correct-Answer":all_Questions[i].answer[0],
          "User-Answer":answers[i],
        }
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final totalQustion=all_Questions.length;
    final CorrectAnswer=generateAnswer.where((data)=>data["Correct-Answer"]==data["User-Answer"]).length;
    
    return SafeArea(
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Your Correct answer are $CorrectAnswer Out of $totalQustion",style: TextStyle(fontSize: 18,color: Colors.white),),
              const SizedBox(height: 30,),
              SizedBox(
                height: 500,
              child: Expanded(child: SingleChildScrollView(child: Makeitems(generateAnswer))),
              ),
              SizedBox(height: 20,),
              CustonOutlinebutton("ReStart",icon: Icons.refresh_rounded,ontap: ontap,),
               ],
              ),
        ),
      ),
    );
  }
}

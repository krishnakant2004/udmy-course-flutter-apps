
import 'package:flutter/material.dart';

import '../Buttons/CustomCircularContainer.dart';
import '../Buttons/CustomShowContener.dart';

class MakesingleItem extends StatelessWidget {
  const MakesingleItem(this.item,{super.key});

  final Map<String,Object> item;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Customcircularcontainer(item["Question-index"] as int),
        SizedBox(width: 8,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: 350,
                child: Text(item["text"] as String,style: TextStyle(color: Colors.white,fontSize: 18,),)),
            SizedBox(height: 2,),
            CustomAnswerContainer(item["Correct-Answer"] as String,),
            SizedBox(height: 2,),
            CustomUserAnswerContainer(item["User-Answer"] as String,color: item["Correct-Answer"]==item["User-Answer"]?Colors.green:Colors.red,),
            SizedBox(height: 30,)
          ],
        ),
      ],
    );
  }
}

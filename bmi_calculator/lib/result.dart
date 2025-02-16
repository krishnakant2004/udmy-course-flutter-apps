import 'package:bmi_calculator/components/reusablecontainerr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'buttons/Bottombutton.dart';
import 'constants/constants.dart';
import 'components/input_file.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key,required this.result,required this.BMIresult,required this.interpretation});

final String result;
final String interpretation;
final String BMIresult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMICALCULATOR'),
        centerTitle: true ,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
             padding: EdgeInsets.all(15),
                child: Text('Your Result',style: kCal_screen_top,),
              alignment: Alignment.bottomLeft,
            ),
          ),
          Expanded(
            flex: 5,
            child: reusablecontainer(
              colorr: kActivecolor,
              container_child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(result,style: kResutetextstyle,),
                  Text(BMIresult,style: kBMItextstyle,),
                  Text(interpretation,
                    style:kBodytextstyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              text: 'RE-CALCULATE',
            onpress: (){
                Navigator.pop(context);
            },
          ),

        ],
      ),

    );
  }
}

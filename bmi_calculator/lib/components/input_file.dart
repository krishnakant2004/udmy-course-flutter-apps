import 'package:bmi_calculator/components/reusablecontainerr.dart';
import 'package:bmi_calculator/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../buttons/Bottombutton.dart';
import '../buttons/RoundiconButton.dart';
import 'calculate_fun_class.dart';
import '../result.dart';
import 'Cardcontent.dart';
import '../constants/constants.dart';


enum Gender{
  male,
  female,
  other,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
Gender selectedgender=Gender.male;
int height=180;
int weight=60;
int age=27;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                child: reusablecontainer(
                  onpress: (){
                    setState(() {
                      selectedgender=Gender.male;
                    });
                  },
                    colorr: selectedgender==Gender.male ? kActivecolor:kInactivecolor,
                    container_child: const cardcontent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    )),
              ),
              Expanded(
                child: reusablecontainer(
                  onpress: (){
                    setState(() {
                      selectedgender=Gender.female;
                    });
                  },
                  colorr: selectedgender==Gender.female ? kActivecolor:kInactivecolor,
                  container_child: const cardcontent(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                ),
              )
            ],
          ),
        ),
         Expanded(
          flex: 1,
          child: reusablecontainer(
            colorr: kActivecolor,
            container_child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('HEIGHT',style: kScreen1_hwa_TextStyle,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children:[
                  Text(height.toString(),style: kNumbertextstyle,),
                  Text('cm',style: TextStyle(fontSize: 20),),

                    ],),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                        overlayColor: const Color(0x29eb1555),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xff8d8e98),
                    thumbColor: Color(0xffeb1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30)
                  ),
                  child: Slider(
                    min: 100,
                      max: 300,
                      value: height.toDouble(),
                      onChanged:(double newval){
                       setState(() {
                         height=newval.toInt();
                       });
                      },

                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(children: [
            Expanded(
              child:  reusablecontainer(
                colorr: kActivecolor,
                container_child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT',style: kScreen1_hwa_TextStyle,),
                    Text(weight.toString(),style: kNumbertextstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon:FontAwesomeIcons.minus,
                          onpress: (){
                          setState(() {
                            if(weight>30)
                            weight--;
                          });
                        },),
                        SizedBox(width: 15,),
                        RoundIconButton(icon:FontAwesomeIcons.plus,
                          onpress: (){
                          setState(() {
                            if(weight<150)
                          weight++;
                        });},),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child:  reusablecontainer(
                colorr: kActivecolor,
                container_child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE',style: kScreen1_hwa_TextStyle,),
                    Text(age.toString(),style: kNumbertextstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon:FontAwesomeIcons.minus,
                        onpress: (){
                          setState(() {
                          if(age>10)
                          age--;
                        },);},
                        ),
                        SizedBox(width: 15,),
                        RoundIconButton(
                          icon:FontAwesomeIcons.plus,
                          onpress: (){
                          setState(() {
                            if(age<95)
                            age++;
                          });
                        },),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
        BottomButton(
          onpress: (){
            calculate calobj=calculate(height:height,weight:weight);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculator(
              BMIresult: calobj.getBMIresult(),
              result: calobj.getResult(),
                interpretation: calobj.getInterpretation(),
            ),),);
          },
          text: 'CALCULATE',
        ),
      ]),
    );
  }
}


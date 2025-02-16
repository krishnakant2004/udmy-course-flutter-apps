import 'package:flutter/material.dart';

import 'Buttons/start_restart_button.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key,required this.ontap});

  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: Colors.white.withOpacity(0.6),
        ),
        const   SizedBox(
          height: 30,
        ),
        const  Text(
          'Learn Flutter with Fun Way!',
          style: largetextstyle
        ),
        const SizedBox(
          height: 30,
        ),
        CustonOutlinebutton("Start",ontap:ontap,icon: Icons.arrow_forward,),
      ],
    );
  }
}

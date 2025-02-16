import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.text,
    required this.onpress
  });
  final Function() onpress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        padding: EdgeInsets.only(bottom: 5),
        color: kBottombuttoncolor,
        height: 60,
        // width: double.infinity,
        child: Center(child: Text(text,style: kBottomtextstyle,)),
      ),
    );
  }
}


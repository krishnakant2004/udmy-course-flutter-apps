import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key,this.icon,this.onpress});

  final IconData? icon;
  final Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:onpress,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tight(Size(56, 56)),
      elevation: 0.0,
      child: Icon(icon,size: 35,),
    );
  }
}


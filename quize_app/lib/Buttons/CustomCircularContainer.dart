import 'package:flutter/material.dart';

class Customcircularcontainer extends StatelessWidget {
  const Customcircularcontainer(this.num,{super.key});

  final num;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: const BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Center(child: Text("${num+1}",style:const TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
    );
  }
}

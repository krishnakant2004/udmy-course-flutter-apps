import 'package:flutter/material.dart';
class CustonOutlinebutton extends StatelessWidget {
  const CustonOutlinebutton(this.text,{required this.ontap,required this.icon,super.key});
  final void Function()? ontap;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return  OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: const Color.fromARGB(255, 91, 32, 145),
        shadowColor: const Color.fromARGB(255, 36, 6, 65),
        elevation: 12,
        overlayColor:const Color.fromARGB(255, 32, 11, 52),
      ),
      onPressed: ontap,
      icon: Icon(icon,color: Colors.white,),
      label:Text(
        text,
        style:const TextStyle(
            fontSize: 21,
            color: Colors.white,
            fontWeight: FontWeight.normal),
      ),
    );
  }
}

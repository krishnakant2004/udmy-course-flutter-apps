import 'package:flutter/material.dart';

class CustomAnswerContainer extends StatelessWidget {
 const CustomAnswerContainer(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(8),
      child: Row(
        children: [
         const Text(
            "Correct Answer: ",
            style: TextStyle(color: Colors.cyan),
          ),
         const SizedBox(
            width: 4,
          ),
          SizedBox(
            width: 180,
            child: Text(
              text,
              textAlign: TextAlign.start,
              style: const TextStyle(color: Color.fromARGB(255, 201, 33, 173),),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomUserAnswerContainer extends StatelessWidget {
  const CustomUserAnswerContainer(
    this.text, {
    required this.color,
    super.key,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final IconData icondata =
        color == Colors.green ? Icons.check_circle : Icons.cancel;
    return Container(
      padding:const EdgeInsets.all(8),
      child: Row(
        children: [
         const Text(
            "User Answer: ",
            style: TextStyle(color: Colors.cyan),
          ),
         const SizedBox(
            width: 4,
          ),
          Icon(
            icondata,
            color: color,
          ),
        const  SizedBox(
            width: 7,
          ),
          SizedBox(
            width: 175,
            child: Text(
              text,
              style: const TextStyle(color: Color.fromARGB(255, 135, 184, 208),),
            ),
          ),
        ],
      ),
    );
  }
}

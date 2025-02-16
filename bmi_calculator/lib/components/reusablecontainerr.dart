import 'package:flutter/material.dart';

class reusablecontainer extends StatelessWidget {
  const reusablecontainer({
    required this.colorr,
    this.container_child,
    this.onpress,
    super.key,
  });
  final Widget? container_child;
  final Color colorr;
   final Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: container_child,
        margin: const EdgeInsets.all(17.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorr,
        ),
      ),
    );
  }
}
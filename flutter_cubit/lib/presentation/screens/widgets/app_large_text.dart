import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  final double size;
  final Color color;
  final String text;
  const AppLargeText(
    {super.key,
     required this.text, 
     this.size=30, 
     this.color=Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style:TextStyle(fontSize: size,color: color,fontWeight: FontWeight.bold));
  }
}
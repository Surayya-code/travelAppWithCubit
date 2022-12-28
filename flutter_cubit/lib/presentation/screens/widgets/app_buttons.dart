import 'package:flutter/material.dart';
import 'package:flutter_cubit/presentation/screens/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  bool isIcon;
  final Color backgrounColor;
  final double size;
  final Color borderColor;

  AppButtons({
  super.key, 
  this.text="hi",
  this.icon,
  this.isIcon=false,
  required this.color, 
  required this.backgrounColor,
  required this.size,
  required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgrounColor,
      ),
      child: isIcon==false?Center(child: AppText(text: text!,color: color,)):Center(child: Icon(icon,color: color,))
    );
  }
}

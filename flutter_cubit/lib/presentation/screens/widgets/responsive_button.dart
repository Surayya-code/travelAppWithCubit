import 'package:flutter/material.dart';
import 'package:flutter_cubit/presentation/constants/styles/app_colors.dart';
import 'package:flutter_cubit/presentation/screens/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;

  const ResponsiveButton({super.key,this.isResponsive=false, this.width=120});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment:isResponsive==true?MainAxisAlignment.spaceBetween: MainAxisAlignment.center,
          children: [
          isResponsive==true?Container(margin:const EdgeInsets.only(left:20),child: const AppText(text: "Book Trip Now",color: Colors.white,)):Container(),
          Image.asset('assets/images/right.png',color: AppColors.buttonBackground,),
        ],),
      ),
    );
  }
}
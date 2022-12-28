import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubits.dart';
import 'package:flutter_cubit/presentation/screens/widgets/app_large_text.dart';
import 'package:flutter_cubit/presentation/screens/widgets/responsive_button.dart';

import '../constants/styles/app_colors.dart';
import 'widgets/app_text.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images=[
    "welcome-one.jpg",
    "welcome-two.jpg",
    "photo-2.jpg",
  ];
   List texts=[
    "Mountain hikes give you an incredible sense of freedom along with endurance test",
    "Mountain hiking embodies what hiking is all about: breathtaking views, fresh air, and a good workout.",
    "Hike with us in the new year on the most beautiful hiking routes throughout Europe, experience the wonderful feeling after a day in nature, enjoy the local cuisine in your travel destination and have a good time. ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_,index){
        return Container(
         width: double.maxFinite,
         height: double.maxFinite,
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/"+images[index]
            ),
            fit: BoxFit.cover,
            ),
         ),
         child: Container(
          margin: const EdgeInsets.only(top:150,left: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                 [
                const AppLargeText(text: 'Trips',),
                const AppText(text: 'Mountain',size: 30,),
                const SizedBox(height: 20,),
                Container(
                  width: 250,
                  child: AppText(
                    text:texts[index],
                    color: AppColors.textColor2,size: 14,),
                ),
                const SizedBox(height: 40,),
                GestureDetector(
                  onTap:(){
                    BlocProvider.of<AppCubits>(context).getData();
                  },
                  child: Container(
                    width: 200,
                    child: Row(
                      children: [
                        const ResponsiveButton(width: 100,),
                      ],
                    )),
                ),
              ],),
              Column(
                children: 
                  List.generate(3, (indexDots) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      width: 8,
                      height: index==indexDots?25:8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color:index==indexDots? AppColors.mainColor: AppColors.mainColor.withOpacity(0.4)
                        ),
                    );
                  })
                ,
              ),
            ]),
         ),
        );
      }),
    );
  }
}
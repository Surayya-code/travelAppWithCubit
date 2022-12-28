import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit_states.dart';
import 'package:flutter_cubit/cubit/app_cubits.dart';
import 'package:flutter_cubit/presentation/screens/detail_page.dart';
import 'package:flutter_cubit/presentation/screens/home_page.dart';
import 'package:flutter_cubit/presentation/screens/welcome_screen.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits,CubitStates>(
        builder: ((context, state) {
          if(state is WelcomeState){
            return const WelcomeScreen();
          }
           if(state is DetailState){
            return const DetailPage();
          }
          if(state is LoadedState){
            return const Homepage();
          }
          if(state is LoadingState){
            return const Center(child: CircularProgressIndicator());
          }
         else{
            return Container();
          }
        }), ),
    );
  }
}
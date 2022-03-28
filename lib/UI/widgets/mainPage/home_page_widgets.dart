import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/screens/personalCardScreen.dart';
import 'package:jobsusageapi/UI/widgets/pageRoute/customPageRoute.dart';


class MainPageCardWidget extends StatelessWidget {
  String? image;
  String? text;
  Color? color;
  Widget? widgetGiven;


  MainPageCardWidget({this.image, this.text, this.color,this.widgetGiven});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CustomPageRoute(child: widgetGiven!, direction: AxisDirection.left));
      },
      child: Container(
        height: 177,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF4A4A58).withOpacity(0.7),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [

              Image.network(
                image!,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text!,
                style: TextStyle(color: color, fontSize: 18),
              ),
            ],
          ),
        ),
      ),

    );
  }
}







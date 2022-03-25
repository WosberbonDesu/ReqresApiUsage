import 'package:flutter/material.dart';


Widget iconButtonWidget(BuildContext context,IconData iconData,Color color,double iconSize){
  return IconButton(onPressed: (){
    Navigator.pop(context);
  }, icon: Icon(iconData,color: color,size: iconSize,));
}
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';


Widget createiconBtn(Color color, double size,Function() func,IconData icon){
  return AvatarGlow(
    child: Icon(icon),
    endRadius: 20,glowColor: color,
    duration: Duration(milliseconds: 2000),
    repeatPauseDuration: Duration(milliseconds: 100),
  );
}
/*
IconButton(
    color: Colors.redAccent,
    iconSize: 40,
    onPressed: (){

    },
    icon: Icon(icon,color: color,),
  );
 */
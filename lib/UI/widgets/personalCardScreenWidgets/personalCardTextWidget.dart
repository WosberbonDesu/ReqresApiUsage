import 'package:flutter/material.dart';

Widget personalCardText(String personName,double fontSizeParameter,Color textColor,{FontWeight? fontWeight} ){
  return Text(
    personName,
    style: TextStyle(
      decoration: TextDecoration.none,
      fontFamily: 'Pacifico',
      color: textColor,
      fontSize: fontSizeParameter,
      fontWeight: fontWeight != null ? fontWeight : FontWeight.normal, // Prefer if diyor bende no diyorum
    ),
  );
}


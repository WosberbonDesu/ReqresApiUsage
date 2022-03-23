import 'package:flutter/material.dart';

Widget personalTextCard(EdgeInsets edgeInsets,Color textCardColor,Widget textArea, Widget iconArea){
  return Card(
    color: textCardColor,
    margin: edgeInsets,
    child: ListTile(
      leading: iconArea,
      title: textArea,
    ),
  );
}
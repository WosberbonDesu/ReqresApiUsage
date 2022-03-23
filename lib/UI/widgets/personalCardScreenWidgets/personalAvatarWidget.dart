import 'package:flutter/material.dart';

Widget avatarWidget(String personImage,{double? radiusValue, Color? colorAvatar}){
  return CircleAvatar(
    radius: radiusValue != null ? radiusValue : 60,
    backgroundColor: colorAvatar != null ? colorAvatar : Colors.red,
    backgroundImage: NetworkImage(personImage),
  );
}
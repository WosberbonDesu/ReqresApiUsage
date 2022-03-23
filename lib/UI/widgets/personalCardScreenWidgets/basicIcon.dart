import 'package:flutter/material.dart';


Widget IconBasic(IconData iconData,Color iconColor,{double? iconSize}){
  return Icon(
    iconData,
    color: iconColor,
    size: iconSize != null ? iconSize : 28,
  );
}
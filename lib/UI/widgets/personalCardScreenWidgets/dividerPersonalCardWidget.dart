import 'package:flutter/material.dart';

SizedBox dividerWidget(double h, double w,{Color? color}){
  return SizedBox(
    height: h,
    width: w,
    child: Divider(
      color: Colors.teal.shade100,
    ),
  );
}
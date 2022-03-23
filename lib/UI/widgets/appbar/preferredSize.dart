import 'package:flutter/material.dart';

PreferredSize preferredSize(double heightPref, double r, {double? l, double? t, double? b}){
  return PreferredSize(
    preferredSize: Size.fromHeight(heightPref),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(
              right: r != null ?  r :8.0,
              left:  l != null ? l : 0,
              top:  t != null ? t : 0,
              bottom: b != null ? b : 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,

          ),
        )
      ],
    ),
  );
}
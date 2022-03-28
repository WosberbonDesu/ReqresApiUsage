import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/screens/businessCardScreen.dart';
import 'package:jobsusageapi/business/constants/imUrl_paths_.dart';

import 'home_page_widgets.dart';

Widget mainPageRowWidget(String image,String image2,String bottomText){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      MainPageCardWidget(
        image: image,
        text: bottomText,
        color: Colors.white,
        widgetGiven: BusinessCardScreen(),
      ),
      MainPageCardWidget(
        image: image2,
        text: bottomText,
        color: Colors.white,
        widgetGiven: BusinessCardScreen(),
      ),

    ],
  );
}

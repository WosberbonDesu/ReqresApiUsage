import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/widgets/personalCardScreenWidgets/basicIcon.dart';
import 'package:jobsusageapi/UI/widgets/personalCardScreenWidgets/personalAvatarWidget.dart';
import 'package:jobsusageapi/UI/widgets/personalCardScreenWidgets/personalCardTextWidget.dart';

import 'personalTextCard.dart';

Widget PersonalCard(){

  return SafeArea(

      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          avatarWidget("https://images.unsplash.com/photo-1606197229797-1660b5417880?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1966&q=80"),
          personalCardText("Berke Can Pınar", 40, Colors.white,fontWeight: FontWeight.bold),
          personalCardText("SENIOR INTERN",20,Colors.teal.shade600,fontWeight: FontWeight.bold),

          SizedBox(
            height: 20,
            width: 150,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),

          personalTextCard(EdgeInsets.symmetric(vertical: 10, horizontal: 25), Colors.white,
            personalCardText('+90 553 0737679', 20, Colors.teal.shade900),
            IconBasic(Icons.phone, Colors.teal),),

          personalTextCard(const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              Colors.white,
              personalCardText('markowblyt2000@gmail.com', 18, Colors.teal.shade900),
              IconBasic(Icons.email, Colors.teal))

        ],

      )
  );

}









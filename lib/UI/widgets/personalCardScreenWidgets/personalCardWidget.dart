import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/widgets/personalCardScreenWidgets/basicIcon.dart';
import 'package:jobsusageapi/UI/widgets/personalCardScreenWidgets/dividerPersonalCardWidget.dart';
import 'package:jobsusageapi/UI/widgets/personalCardScreenWidgets/personalAvatarWidget.dart';
import 'package:jobsusageapi/UI/widgets/personalCardScreenWidgets/personalCardTextWidget.dart';
import 'package:jobsusageapi/UI/widgets/whenErrorOccu/errorSnackbar.dart';

import 'iconButtonWidget.dart';
import 'personalTextCard.dart';

Widget PersonalCard(BuildContext context,{String? imUrl}){

  return Scaffold(

    backgroundColor: Colors.black,

    body: SafeArea(

        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => errorDialog(
                  title: "title",
                  buttonText: "buttonText",
                  image: Icons.exit_to_app_outlined,
                  colorHeader: Colors.blueGrey)
              )
              );
    }, child: Text("Press me"),),
            avatarWidget(imUrl != null ? imUrl :"https://images.unsplash.com/photo-1606197229797-1660b5417880?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1966&q=80"),

            personalCardText("Berke Can Pınar", 40, Colors.white,fontWeight: FontWeight.bold),

            personalCardText("SENIOR INTERN",20,Colors.teal.shade600,fontWeight: FontWeight.bold),

            dividerWidget(20,150),

            personalTextCard(const EdgeInsets.symmetric(vertical: 10, horizontal: 25), Colors.white,
              personalCardText('+90 553 0737679', 20, Colors.teal.shade900),
              IconBasic(Icons.phone, Colors.teal),),

            personalTextCard(const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                Colors.white,
                personalCardText('markowblyt2000@gmail.com', 18, Colors.teal.shade900),
                IconBasic(Icons.email, Colors.teal)),
            iconButtonWidget(context,Icons.exit_to_app_outlined,Colors.red,45),
          ],

        )
    ),
  );
}









import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/screens/personalCardScreen.dart';
import 'package:jobsusageapi/UI/widgets/appbar/preferredSize.dart';
import 'package:jobsusageapi/UI/widgets/pageRoute/customPageRoute.dart';
import 'package:jobsusageapi/business/constants/colors.dart';



AppBar transparentAppBar(String title, double elevValue,BuildContext context){
  return AppBar(

    elevation: elevValue,
    flexibleSpace: ClipRRect(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(600)),
      child: Container(
        decoration: BoxDecoration(
            gradient: customGradient(7.4)
        ),
      ),
    ),
    backgroundColor: ColorConsts.backgroundColor,
    title: InkWell(
        child: Text(title),
      onTap: (){
          Navigator.push(context,CustomPageRoute(child: PersonalCardScreen(),direction: AxisDirection.left));
      },
    ),
    centerTitle: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200)),
    ),
    bottom:  preferredSize(70, 8)
  );
}


Gradient customGradient(double angle){
  return SweepGradient(
      endAngle: angle,
      colors: const [
        ColorConsts.appBlue,
        ColorConsts.textColor,
        ColorConsts.deepPurp,
        ColorConsts.lightBlue,
        ColorConsts.deepPurp,
        ColorConsts.black,
      ]
  );
}
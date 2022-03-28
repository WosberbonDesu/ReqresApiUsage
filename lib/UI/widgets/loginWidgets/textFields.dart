import 'package:flutter/material.dart';
import 'package:jobsusageapi/business/constants/colors.dart';


Widget textField(bool obscureOrNot,IconData icon,String hint,TextEditingController controller){
  return Padding(
    padding: const EdgeInsets.only(top: 90.0,right: 8,left: 8),
    child: TextField(
      controller: controller,
      style: const TextStyle(color: ColorConsts.backgroundColor),
      keyboardType: TextInputType.emailAddress,
      obscureText: obscureOrNot,
      decoration:  InputDecoration(
          prefixIcon: Icon(icon,color: ColorConsts.backgroundColor,),
          enabledBorder: input(),
          focusedBorder: input(),
          border: input(),
          hintText: hint,
          hintStyle: const TextStyle(color: ColorConsts.backgroundColor)
      ),
      onChanged: (value) {

      },
    ),
  );
}
InputBorder input(){
  return const OutlineInputBorder(
    borderSide: BorderSide(color: ColorConsts.backgroundColor),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  );
}
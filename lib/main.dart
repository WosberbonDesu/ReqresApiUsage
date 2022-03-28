import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/screens/loginPage/loginPage.dart';
import 'package:jobsusageapi/models/login/loginModel.dart';
import 'package:provider/provider.dart';


void main() {runApp(MultiProvider(providers:[
  ChangeNotifierProvider(create: (_)=>LoginModel())]
  ,child: Welcome(),));
}





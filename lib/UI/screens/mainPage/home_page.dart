import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/widgets/commons/createIconButton.dart';
import 'package:jobsusageapi/UI/widgets/mainPage/homePageStack.dart';
import 'package:jobsusageapi/business/constants/colors.dart';
import 'package:jobsusageapi/models/login/loginModel.dart';
import 'package:provider/provider.dart';




class HomePageMix extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginModel>(
      builder: (context,user,_) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey.shade900,
          bottomNavigationBar: Container(
            height: 80,
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                  stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Colors.lightBlue,
                  Colors.red,
                  Colors.indigo,
                  Colors.orangeAccent
                ]
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createiconBtn(Colors.white, 40, (){}, Icons.batch_prediction_outlined),
                  createiconBtn(Colors.white, 40, (){}, Icons.account_circle),
                  createiconBtn(Colors.white, 40, (){}, Icons.edit_attributes_outlined)
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              SizedBox(height: 10,),
              Text(user.pass+" "+user.email,style: const TextStyle(color: Colors.white,fontSize: 30),),
              homePageStack(400, ColorConsts.backgroundColor,user.pass),
            ],
          ),
        );
      }
    );
  }
}
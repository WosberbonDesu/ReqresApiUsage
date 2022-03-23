import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/screens/businessCardScreen.dart';
import 'UI/screens/expandiblePersonalCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BusinessCardScreen(),
    );
  }
}



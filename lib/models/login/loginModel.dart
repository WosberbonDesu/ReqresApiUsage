import 'package:flutter/cupertino.dart';

class LoginModel extends ChangeNotifier{
  String email = "";
  String pass = "";

  void signIn(String email, String pass){
    email = email;
    pass = pass;
    notifyListeners();
  }
}
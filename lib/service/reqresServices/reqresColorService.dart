import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jobsusageapi/business/constants/colors.dart';
import 'package:jobsusageapi/models/reqresModel/colorData/ReqresColorMainModel.dart';

class ReqresColorService {
  //BuildContext? ctx;
  /*ReqresColorService(BuildContext context){
    context = this.ctx!;
  }*/
  final String url = "https://reqres.in/api/list?page=1";
  Future<ColorModel?> fetchColors() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonBody = ColorModel.fromJson(jsonDecode(response.body));
      return jsonBody;
    } else {
      print("Error");
    }
  }
}

/*
ScaffoldMessenger.of(ctx!).showSnackBar(
        SnackBar(content: Text("Failed",style: TextStyle(color: ColorConsts.backgroundColor),),backgroundColor: ColorConsts.errorColor,)
      );
 */
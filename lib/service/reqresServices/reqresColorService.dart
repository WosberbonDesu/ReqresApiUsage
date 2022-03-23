import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jobsusageapi/models/reqresModel/ReqresMainModel.dart';
import 'package:jobsusageapi/models/reqresModel/colorData/ReqresColorMainModel.dart';

class ReqresColorService {
  final String url = "https://reqres.in/api/list?page=1";
  Future<ColorModel?> fetchColors() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonBody = ColorModel.fromJson(jsonDecode(response.body));
      return jsonBody;
    } else {
      print("Failed ${response.statusCode}");
    }
  }
}
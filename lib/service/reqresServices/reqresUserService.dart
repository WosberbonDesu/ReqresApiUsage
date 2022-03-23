import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jobsusageapi/models/reqresModel/ReqresMainModel.dart';
import 'package:jobsusageapi/models/reqresModel/reqresUserModel.dart';


class ReqresService {
  final String url = "https://reqres.in/api/users?page=2";
  Future<ReqresModel?> fetchUsers() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonBody = ReqresModel.fromJson(jsonDecode(response.body));
      return jsonBody;
    } else {
      print("Failed ${response.statusCode}");
    }
  }
}
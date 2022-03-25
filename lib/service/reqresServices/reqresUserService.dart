import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jobsusageapi/models/reqresModel/ReqresMainModel.dart';



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


class UserApi {
  static UserApi? _instance;

  UserApi._();

  static UserApi get instance {
    _instance ??= UserApi._();
    return _instance!;
  }

  Future<ReqresModel?> getAllUser() async {
    final getUser = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    var jsonBody = ReqresModel.fromJson(jsonDecode(getUser.body));
    return jsonBody;
  }
}
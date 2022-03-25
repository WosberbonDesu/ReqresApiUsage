import 'package:flutter/widgets.dart';
import 'package:jobsusageapi/models/reqresModel/colorData/reqresColorModel.dart';
import 'package:jobsusageapi/models/reqresModel/reqresUserModel.dart';
import 'package:jobsusageapi/service/reqresServices/reqresUserService.dart';



enum Homestate{
  Initial,
  Loading,
  Loaded,
  Error,
}

class FetchModel extends ChangeNotifier{
  Homestate _homeState = Homestate.Initial;
  bool? isLoading;
  List<ReqresModelData?> users = [];
  String message = '';

  FetchModel(){
    _fetchUsers();
  }
  Homestate get homeState => _homeState;

  Future<void> _fetchUsers() async{
    _homeState = Homestate.Loading;
    try{
      final apiusers = await UserApi.instance.getAllUser();
      users = apiusers!.data!;
      print(users);
      _homeState = Homestate.Loaded;
    }catch(e){
      message = "$e";
      _homeState = Homestate.Error;
    }
    notifyListeners();
  }

}
/*

service.fetchUsers().then((value) {
      if (value != null && value.data != null) {
        setState(() {
          users =  value.data!;
          isLoading = true;
        });
      } else {
        setState(() {
          isLoading = false;
        });
      }
 */
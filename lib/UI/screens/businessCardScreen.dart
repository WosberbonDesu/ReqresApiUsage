import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/screens/personalCardScreen.dart';
import 'package:jobsusageapi/UI/screens/providerUsageScreen.dart';
import 'package:jobsusageapi/UI/widgets/appbar/transparentAppBar.dart';
import 'package:jobsusageapi/UI/widgets/businessCardScreen/customListTile.dart';
import 'package:jobsusageapi/UI/widgets/pageRoute/customPageRoute.dart';
import 'package:jobsusageapi/models/reqresModel/colorData/reqresColorModel.dart';
import 'package:jobsusageapi/models/reqresModel/reqresUserModel.dart';
import 'package:jobsusageapi/service/reqresServices/reqresColorService.dart';
import 'package:jobsusageapi/service/reqresServices/reqresUserService.dart';
import 'expandiblePersonalCard.dart';

class BusinessCardScreen extends StatefulWidget {
  @override
  State<BusinessCardScreen> createState() => _BusinessCardScreenState();
}

class _BusinessCardScreenState extends State<BusinessCardScreen> {

  ReqresService _service = ReqresService();
  bool? isLoading;
  List<ReqresModelData?> users = [];
  ReqresColorService _colorService = ReqresColorService();
  List<ReqresColorData?> colors = [];

  @override
  void initState() {
    super.initState();
    _service.fetchUsers().then((value) {
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
    });
    _colorService.fetchColors().then((val) {
      if (val != null && val.data != null) {
        setState(() {
          colors =  val.data!;
          isLoading = true;
        });
      } else {
        print("An error occured");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: transparentAppBar("Click Me",15,context),
        body: isLoading == null
            ? const Center(
          child: CircularProgressIndicator(),
        )
            : isLoading == true ?  ListView.builder(
          itemCount: users.length,
          // users[index]!.firstName! + users[index]!.lastName!
          itemBuilder: (context, index) {
            return ActivityListTile(title: users[index]!.firstName! +" "+ users[index]!.lastName!,
                subtitle: users[index]!.email!,
                trailingImage:
                Image.network(users[index]!.avatar!, height: 80),
                color: const Color.fromRGBO(82, 66, 232, 1),
                gradient: const Color.fromRGBO(58, 63, 255, 1),
                onTab: () {
                  Navigator.push(context,CustomPageRoute(child: TextTilePage(users[index]!.firstName!+" "+ users[index]!.lastName!,
                      users[index]!.avatar!,colors[index]!.year.toString(),
                      colors[index]!.color!.substring(1)),direction: AxisDirection.down));
                }
            );
          },
        ): const Center(
          child: Text("ERROR error ERROR error.."),
        ),
    );
  }
}

/*
  Navigator.push(context,CustomPageRoute(child: TextTilePage(users[index]!.firstName!+" "+ users[index]!.lastName!,
                   users[index]!.avatar!,colors[index]!.year.toString(),
                   colors[index]!.color!.substring(1)),direction: AxisDirection.down));

 */

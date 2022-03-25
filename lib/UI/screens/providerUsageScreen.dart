import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/widgets/businessCardScreen/customListTile.dart';
import 'package:jobsusageapi/UI/widgets/whenErrorOccu/errorSnackbar.dart';
import 'package:jobsusageapi/view_model/fetch_model.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Screen User List'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => FetchModel(),
        child: Builder(builder: (context) {
          final model = Provider.of<FetchModel>(context);
          if (model.homeState == Homestate.Loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (model.homeState == Homestate.Error) {
            return errorDialog(
                title: "Error",
                buttonText: "Error occured",
                image: Icons.cancel,
                colorHeader: Colors.blueGrey);
          }
          final users = model.users;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ActivityListTile(
                title: users[index]!.firstName! + " " + users[index]!.lastName!,
                subtitle: users[index]!.email!,
                trailingImage:
                Image.network(users[index]!.avatar!, height: 80),
                color: const Color.fromRGBO(82, 66, 232, 1),
                gradient: const Color.fromRGBO(58, 63, 255, 1),
                onTab: () {
                  Navigator.push(context, MaterialPageRoute(builder: (
                      context) => HomeView()));
                },
              );
            });
        }),
      ),
    );
  }
}
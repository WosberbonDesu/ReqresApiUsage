import 'package:flutter/material.dart';
import 'package:jobsusageapi/business/constants/colors.dart';


class ActivityListTile extends StatelessWidget {

  String? title;
  String? subtitle;
  Widget? trailingImage;
  VoidCallback? onTab;
  Color? color;
  Color? gradient;

  ActivityListTile({this.title, this.color, this.gradient, this.onTab, this.subtitle , this.trailingImage});

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),

      child: GestureDetector(

        onTap: onTab, //ыоукд эфффцууу ФФФФФФФФФФФФФФФФФФ

        child: Stack(

            alignment: Alignment.bottomRight,

            children: <Widget>[
              Card(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              const Radius.circular(5.0)
                          ),
                          gradient : SweepGradient(colors: [Colors.deepPurple,Colors.lightBlueAccent,color!, gradient!,Colors.black,Colors.deepOrangeAccent],
                              endAngle: 0.5)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top : 8.0),
                            child: Text(title!,style: TextStyle(backgroundColor: ColorConsts.backgroundColor),),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(subtitle!, style: TextStyle(fontSize: 12,backgroundColor: ColorConsts.backgroundColor),),
                          ),
                        ),
                      ),
                  )
              ),

              Padding(
                  padding: const EdgeInsets.only(bottom:4),
                  child: Container(child : trailingImage)
              )
            ]
        ),

      ),
    );
  }
}



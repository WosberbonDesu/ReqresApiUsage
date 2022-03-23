import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/widgets/appbar/transparentAppBar.dart';
import 'package:jobsusageapi/UI/widgets/expandablePersonalCard/expandibleBuildText.dart';
import 'package:jobsusageapi/UI/widgets/expandablePersonalCard/paddingBodyWidget.dart';
import 'package:jobsusageapi/business/constants/expandibleConsts.dart';


class TextTilePage extends StatefulWidget {
  final String personalName;
  final String imagePath;
  final String workYear;
  final String colorPerPerson;
  TextTilePage(this.personalName,this.imagePath,this.workYear,this.colorPerPerson);
  @override
  _TextTilePageState createState() => _TextTilePageState();
}

class _TextTilePageState extends State<TextTilePage> {


  void expandTile() {
    setState(() {
      expandibleConsts().isExpanded = true;
      expandibleConsts().keyTile = UniqueKey();
    });
  }

  void shrinkTile() {
    setState(() {
      expandibleConsts().isExpanded = false;
      expandibleConsts().keyTile = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color(int.parse("0xFF{$widget.colorPerPerson}")),
    appBar: transparentAppBar("Personal Card", 15),
    body: paddingCard((){expandibleConsts().isExpanded ? shrinkTile() : expandTile();},buildText(context,widget.personalName,widget.workYear),widget.imagePath)
  );

}
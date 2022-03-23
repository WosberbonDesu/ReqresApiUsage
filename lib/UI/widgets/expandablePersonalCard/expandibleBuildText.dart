import 'package:flutter/material.dart';
import 'package:jobsusageapi/business/constants/expandibleConsts.dart';

Widget buildText(BuildContext context,String name,String yearWork) => Theme(
  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
  child: ExpansionTile(
      key: expandibleConsts().keyTile,
      initiallyExpanded: expandibleConsts().isExpanded,
      childrenPadding: const EdgeInsets.all(16).copyWith(top: 0),
      title:  Text(
        '👩 '+name,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      ),
      children:  [
        Text(
          'Year: ' + yearWork+ ' I help entrepreneurs & businesses figure out how to build scalable applications.\n\nWith over 7 years experience spanning across many industries from B2B to B2C, I live and breath Flutter.',
          style: TextStyle(fontSize: 18, height: 1.4),
        ),
      ],
      onExpansionChanged: (isExpanded) => const Text("heheh")
  ),
);
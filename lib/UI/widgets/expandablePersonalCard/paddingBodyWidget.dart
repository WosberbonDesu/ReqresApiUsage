import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/widgets/expandablePersonalCard/expandibleBuildImage.dart';
import 'package:jobsusageapi/business/constants/expandibleConsts.dart';

import 'expandibleBuildText.dart';

Padding paddingCard(VoidCallback? onTabPad,Widget? textWidget,String imPathFr){

  return Padding(
    padding: const EdgeInsets.all(12),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(expandibleConsts.radius),
        side: const BorderSide(color: Colors.black, width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(expandibleConsts.radius),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => onTabPad,
                child: buildImage(imPathFr),
              ),
              textWidget!
            ],
          ),
        ),
      ),
    ),
  );
}

// expandibleConsts().isExpanded ? shrinkTile() : expandTile()
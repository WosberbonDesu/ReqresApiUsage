import 'package:flutter/material.dart';
import 'package:jobsusageapi/UI/widgets/commons/frostedCardWidget.dart';
import 'package:jobsusageapi/business/constants/colors.dart';
import 'package:jobsusageapi/business/constants/imUrl_paths_.dart';

import 'mainPageRowWidget.dart';

Stack homePageStack(double height,Color textColor,String name){
  return Stack(
    children: [
      Transform.rotate(
        origin: const Offset(30, -60),
        angle: 2.4,
        child: Container(
          margin: const EdgeInsets.only(
            left: 75,
            top: 40,
          ),
          height: height,
          width: double.infinity,

        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  mainPageRowWidget(urlPaths.withoutProviderPageUrl,urlPaths.personalCardPageUrl, name),
                  const SizedBox(
                    height: 20,
                  ),
                  mainPageRowWidget(urlPaths.providerPageUrl,urlPaths.profilePage, "Provider"),
                  const SizedBox(height: 20),
                  const FrostedGlassBox(width: 60, height: 60, child: Text("rere"))
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
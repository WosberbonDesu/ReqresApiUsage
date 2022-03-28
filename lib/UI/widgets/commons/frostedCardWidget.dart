import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:jobsusageapi/business/constants/imUrl_paths_.dart';
class FrostedGlassBox extends StatelessWidget {
  final double? width, height;
  final Widget? child;

  const FrostedGlassBox({Key? key, @required this.width, @required this.height, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7.0,
                sigmaY: 7.0,
              ),
              child: Container(width: width, height: height, child: Text(" ")),
            ),
            Opacity(
                opacity: 0.15,
                child: Image.network(
                  urlPaths.providerPageUrl,
                  fit: BoxFit.cover,
                  width: width,
                  height: height,
                )),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.85), blurRadius: 2, offset: Offset(1, 2))],
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.white.withOpacity(0.8), width: 1.0),
                  gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.8),
                  ], stops: [
                    0.0,
                    1.0,
                  ])),
              child: child,
            ),
          ],
        ),
      ),
    );
  }}
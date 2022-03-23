import 'package:flutter/material.dart';

Widget buildImage(String imPath) => Image.network(
  imPath,
  fit: BoxFit.cover,
  width: double.infinity,
  height: 400,
);
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jobsusageapi/business/constants/constantDialogValues.dart';



class errorDialog extends StatelessWidget {
  final String title, buttonText;
  final Color colorHeader;
  final IconData image;

  errorDialog(
      {
        required this.title,
        required this.buttonText,
        required this.image,
        required this.colorHeader
      }
      );
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Consts.padding),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: dialogContent(context),
      ),
    );
  }
  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: Consts.padding,
            left: Consts.padding-1,
            right: Consts.padding-1,
          ),
          margin: const EdgeInsets.only(top: Consts.avatarRadius),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(Consts.padding),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10.0,
                offset: Offset(0.0, 0.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 70.0, left: 70.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        image,
                        size: 50,
                        color: Colors.redAccent,
                      ),
                      const Text(
                        "Error",
                        style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.redAccent),
                      ),
                    ]),
              ),

              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        primary: const Color(0xFFFE3746),
                        padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
                    onPressed: () {Navigator.of(context).pop();},
                    child: const Text(
                      "Okay",
                      style:  TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}


/*Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // To close the dialog
                    },
                    child: Text(
                      buttonText,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),*/
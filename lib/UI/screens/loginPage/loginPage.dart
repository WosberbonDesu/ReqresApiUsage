import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsusageapi/UI/screens/mainPage/home_page.dart';
import 'package:jobsusageapi/UI/widgets/loginWidgets/glassmorphismWidget.dart';
import 'package:jobsusageapi/UI/widgets/loginWidgets/textFields.dart';
import 'package:jobsusageapi/UI/widgets/notification/local_notification_widget.dart';
import 'package:jobsusageapi/business/constants/colors.dart';
import 'package:jobsusageapi/business/constants/imUrl_paths_.dart';
import 'package:jobsusageapi/models/login/loginModel.dart';
import 'package:provider/provider.dart';


class Welcome extends StatelessWidget {

  var userEmailController = TextEditingController();
  var passEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.network(
                urlPaths.loginPageUrl,
                fit: BoxFit.cover,
              ),

            ),
            SafeArea(
              child: Column(
                children: [
                  Expanded(child: textField(false,Icons.email_sharp,"email",userEmailController)),
                  Expanded(child: textField(true,Icons.lock,"password",passEditController)),
                  const Spacer(),
                  // Build Widget Glassmorphism
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Glassmorphism(
                      blur: 15,
                      opacity: 0.2,
                      radius: 20,
                      child: Container(
                        height: 200,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [

                            const Text(
                              'APILOGIE apilogie APILOGIE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Click the button for enter',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 16.0,
                              ),
                            ),
                            const Spacer(),
                            Glassmorphism(
                              blur: 20,
                              opacity: 0.1,
                              radius: 50.0,
                              child: TextButton(
                                onPressed: () {

                                  Provider.of<LoginModel>(context, listen: false).signIn(
                                      userEmailController.text.toString(),
                                      passEditController.text.toString()); // rebuildi önlemek için listen false yapılıyor cool af
                                  Get.to(() => HomePageMix());
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                    horizontal: 20,
                                  ),
                                  child: const Text(
                                    'Get started now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
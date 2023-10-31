import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample_project_2/utils/color_constants/color_contants.dart';
import 'package:sample_project_2/utils/image_constants/imageconstants.dart';

import 'package:sample_project_2/view/home_screen/homescreen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => homeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainText,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageConstants.whatsAppLogo))),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: avoid_print, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:bank_app/core/constant/colors.dart';
import 'package:bank_app/ui/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final _authService = locator<AuthServices>();

  @override
  void initState() {
    _initialSetup();
    super.initState();
  }

  _initialSetup() async {
    await Future.delayed(const Duration(seconds: 1));
    Get.offAll(() => WelcomeScreen());
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Center(
        child: Text(
          "Splash Screen",
          style: TextStyle(color: whiteColor),
        ),
      ),
    );
  }
}

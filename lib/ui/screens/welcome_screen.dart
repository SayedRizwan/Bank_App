// ignore_for_file: use_key_in_widget_constructors

import 'package:bank_app/core/constant/app_assets.dart';
import 'package:bank_app/core/constant/colors.dart';
import 'package:bank_app/core/constant/text_style.dart';
import 'package:bank_app/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:bank_app/ui/screens/auth/sign_in/sign_in_screen.dart';
import 'package:bank_app/ui/screens/auth/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset(
                //   AppAssets.background_image,
                //   scale: 4,
                // ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Make a World of Difference",
                  style: styleB25.copyWith(color: whiteColor),
                ),
                SizedBox(
                  height: 40.h,
                ),

                ///
                /// Soacial Button
                ///
                // _PressableButton(
                //     image: AppAssets.google,
                //     text: "Continue With Google",
                //     onPressed: () {
                //       print("google preessed");
                //     }),

                CustomButton(
                  name: "Register",
                  onPressed: () {
                    Get.to(() => SignUpScreen());
                  },
                  textColor: blackColor,
                  boxColor: yellowColor,
                ),
                CustomButton(
                  name: "Login",
                  onPressed: () {
                    Get.to(() => SignInScreen());
                  },
                  textColor: blackColor,
                  boxColor: whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PressableButton extends StatefulWidget {
  final String image;
  final String text;
  final VoidCallback onPressed;

  const _PressableButton({
    required this.image,
    required this.text,
    required this.onPressed,
  });

  @override
  _PressableButtonState createState() => _PressableButtonState();
}

class _PressableButtonState extends State<_PressableButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: AnimatedScale(
        scale: _isPressed ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 100),
        child: Container(
          height: 56.h,
          alignment: Alignment.center,
          // padding: const EdgeInsets.only(top: 20.0, bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.r), color: whiteColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.image,
                height: 35.h,
                width: 35.w,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                widget.text,
                style: styleB18.copyWith(color: blackColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors

import 'package:bank_app/core/constant/auth_feild_decoration.dart';
import 'package:bank_app/core/constant/colors.dart';
import 'package:bank_app/core/constant/text_style.dart';
import 'package:bank_app/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:bank_app/ui/screens/auth/sign_in/sign_in_view_model.dart';
import 'package:bank_app/ui/screens/auth/sign_up/sign_up_screen.dart';
import 'package:bank_app/ui/screens/root/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignInViewModel(),
        child: Consumer<SignInViewModel>(
          builder: (context, model, child) => Scaffold(
            ///
            /// App Bar
            ///
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              automaticallyImplyLeading: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: blackColor,
                  )),
            ),

            ///
            /// Start Body
            ///
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Log In",
                            style: styleB25.copyWith(
                                color: blackColor, fontSize: 30.sp),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.r),
                          boxShadow: [
                            BoxShadow(
                                color: blackColor.withOpacity(0.20),
                                blurRadius: 4.0,
                                spreadRadius: 0.0,
                                offset: const Offset(0.0, 4.0))
                          ]),
                      child: TextFormField(
                        decoration: authFieldDecoration.copyWith(
                            hintText: 'Email Address'),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.r),
                          boxShadow: [
                            BoxShadow(
                                color: blackColor.withOpacity(0.20),
                                blurRadius: 4.0,
                                spreadRadius: 0.0,
                                offset: const Offset(0.0, 4.0))
                          ]),
                      child: TextFormField(
                          obscureText: model.isShowPassword ? true : false,
                          decoration: authFieldDecoration.copyWith(
                              hintText: 'Password',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  model.showPassword();
                                },
                                child: Icon(
                                  model.isShowPassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: blueColor,
                                ),
                              ))),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: styleB16,
                          )),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),

            ///
            /// Bottom Navigator Bar
            ///
            bottomNavigationBar: BottomAppBar(
              surfaceTintColor: Colors.transparent,
              color: Colors.transparent,
              shadowColor: Colors.transparent,
              height: 150.h,
              child: Column(
                children: [
                  CustomButton(
                    name: 'Log In',
                    onPressed: () {
                      Get.offAll(RootScreen());
                    },
                    textColor: whiteColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: styleB14,
                      ),
                      TextButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          Get.offAll(() => SignUpScreen());
                        },
                        child: Text(
                          "Sign up",
                          style: styleB16.copyWith(
                            color: blueColor,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

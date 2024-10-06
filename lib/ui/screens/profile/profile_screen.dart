// ignore_for_file: use_key_in_widget_constructors

import 'package:bank_app/core/constant/auth_feild_decoration.dart';
import 'package:bank_app/core/constant/colors.dart';
import 'package:bank_app/core/constant/text_style.dart';
import 'package:bank_app/ui/screens/profile/profile_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileViewModel(),
        child: Consumer<ProfileViewModel>(
          builder: (context, model, child) => Scaffold(
            ///
            /// App Bar
            ///
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              automaticallyImplyLeading: true,
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
                            "Jhon Doe",
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
                        decoration:
                            authFieldDecoration.copyWith(hintText: 'Full Name'),
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
                        decoration:
                            authFieldDecoration.copyWith(hintText: 'User Name'),
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
                  ],
                ),
              ),
            ),

            floatingActionButton: FloatingActionButton(
              backgroundColor: blueColor,
              onPressed: () {},
              child: const Icon(
                Icons.edit,
                color: whiteColor,
              ),
            ),
          ),
        ));
  }
}

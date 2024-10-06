import 'package:bank_app/core/constant/app_assets.dart';
import 'package:bank_app/core/constant/colors.dart';
import 'package:bank_app/core/constant/text_style.dart';
import 'package:bank_app/ui/screens/home/home_view_model.dart';
import 'package:bank_app/ui/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

class AccountService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 130.h,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            title: _buildAppBarContent(model),
          ),
          body: _buildAnimatedBody(model),
          floatingActionButton: _buildAnimatedFloatingButton(model),
        );
      }),
    );
  }

  // AppBar with User Details
  Widget _buildAppBarContent(HomeViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.to((ProfileScreen()));
              },
              child: CircleAvatar(
                radius: 30.r,
                backgroundImage: AssetImage(AppAssets.app_logo),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Welcome,",
              style: styleN14.copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              model.userName,
              style: styleB18,
            ),
          ],
        ),
      ],
    );
  }

  // Main animated body with the balance display container
  Widget _buildAnimatedBody(HomeViewModel model) {
    return Center(
      child: GestureDetector(
        onTap: model.toggleBalance,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          height: model.containerHeight,
          width: model.containerWidth,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              model.showBalance
                  ? BoxShadow(
                      color: blackColor.withOpacity(0.25),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 5.0,
                      spreadRadius: 5.0,
                    )
                  : BoxShadow(
                      color: blackColor.withOpacity(0.25),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 1.0,
                      spreadRadius: 3.0,
                    )
            ],
          ),
          child: AnimatedOpacity(
            opacity: 1.0,
            duration: const Duration(milliseconds: 1000),
            child: AnimatedScale(
              scale: 1.0,
              duration: const Duration(milliseconds: 1000),
              child: Text(
                model.showBalance ? "Hide Balance" : "Show Balance",
                style: styleB14.copyWith(fontSize: 18.sp),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Floating action button with an animation effect
  // Floating action button with an animation effect
  Widget _buildAnimatedFloatingButton(HomeViewModel model) {
    return AnimatedAlign(
      alignment:
          model.showBalance ? Alignment.bottomRight : Alignment.bottomLeft,
      duration: const Duration(milliseconds: 500),
      child: Container(
        margin: EdgeInsets.only(bottom: 20.0.sp, left: 40.0.sp),
        padding: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.25),
              offset: const Offset(0.0, 3.0),
              blurRadius: 3.0,
              spreadRadius: 3.0,
            )
          ],
        ),
        child: AnimatedOpacity(
          opacity: 1.0, // Keep the opacity at full for visibility
          duration: const Duration(milliseconds: 500),
          child: Text(
            model.showBalance
                ? "\$ ${model.balance}"
                : "****", // Show balance when aligned to the right, otherwise show "******"
            textAlign: TextAlign.left,
            style: styleB16.copyWith(fontSize: 18.sp, color: blackColor),
          ),
        ),
      ),
    );
  }
}

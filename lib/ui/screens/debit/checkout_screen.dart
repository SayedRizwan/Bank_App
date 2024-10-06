import 'package:bank_app/core/constant/app_assets.dart';
import 'package:bank_app/core/constant/colors.dart';
import 'package:bank_app/core/constant/text_style.dart';
import 'package:bank_app/ui/screens/debit/debit_view_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DebitViewModel>(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 35.r,
                child: Icon(
                  Icons.arrow_upward,
                  color: whiteColor,
                  size: 30.sp,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "\$ 1,500.00",
                style: styleB25,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Sucessfully sent to",
                style: styleN18.copyWith(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15.h,
              ),
              Image.asset(
                AppAssets.sucessfull_payment,
                height: 130.h,
                width: 130.w,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Awais khan",
                style: styleB18,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "With Reason of bill payment",
                style: styleN16.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

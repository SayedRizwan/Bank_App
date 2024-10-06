import 'package:bank_app/core/constant/auth_feild_decoration.dart';
import 'package:bank_app/core/constant/colors.dart';
import 'package:bank_app/core/constant/text_style.dart';
import 'package:bank_app/ui/custom_widgets/buttons/custom_buttons.dart';
import 'package:bank_app/ui/screens/debit/checkout_screen.dart';
import 'package:bank_app/ui/screens/debit/debit_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

class DebitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DebitViewModel>(
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70.h,
                ),
                Text(
                  "Pay",
                  style: styleB25.copyWith(color: blackColor, fontSize: 30.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Pay From",
                    style: styleB18.copyWith(color: Colors.grey),
                  ),
                ),

                ///
                /// You
                ///
                _ownerDetail(),

                ///
                /// Sedning user details
                ///
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Pay To",
                    style: styleB18.copyWith(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),

                ///
                /// Reciever name
                ///
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
                      child: Text('Reciever name', style: styleB14),
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
                        hintText: 'Reciever name',
                      )),
                    ),
                  ],
                ),

                ///
                /// Reciever Account
                ///
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, bottom: 5.0, top: 10),
                      child: Text('Reciever Account', style: styleB14),
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
                        hintText: 'Reciever Account',
                      )),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
                  child: Text('Payment Methd', style: styleB14),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: boxTextFieldColor,
                      borderRadius: BorderRadius.circular(40.r),
                      boxShadow: [
                        BoxShadow(
                            color: blackColor.withOpacity(0.20),
                            blurRadius: 4.0,
                            spreadRadius: 0.0,
                            offset: const Offset(0.0, 4.0))
                      ]),
                  child: DropdownButton<String>(
                    dropdownColor: boxTextFieldColor,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    isExpanded: true,
                    value: model.selectedPaymentMethod,
                    onChanged: (String? newValue) {
                      model.selectedPaymentMethod = newValue!;
                    },
                    items: model.paymentMethods
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                // Dropdown for Purpose
                SizedBox(height: 16.h),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                  child: Text('Purpose', style: styleB14),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: boxTextFieldColor,
                      borderRadius: BorderRadius.circular(40.r),
                      boxShadow: [
                        BoxShadow(
                            color: blackColor.withOpacity(0.20),
                            blurRadius: 4.0,
                            spreadRadius: 0.0,
                            offset: const Offset(0.0, 4.0))
                      ]),
                  child: DropdownButton<String>(
                    dropdownColor: boxTextFieldColor,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    isExpanded: true,
                    value: model.selectedPurpose,
                    onChanged: (String? newValue) {
                      model.selectedPurpose = newValue!;
                    },
                    items: model.purposes
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                ///
                /// Reciever name
                ///
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, bottom: 5.0, top: 10),
                      child: Text('Amount', style: styleB14),
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
                        hintText: 'Amount\$',
                      )),
                    ),
                  ],
                ),

                CustomButton(
                    name: "Pay",
                    onPressed: () {
                      Get.to(() => CheckoutScreen());
                    },
                    textColor: whiteColor),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_ownerDetail() {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
          color: blackColor.withOpacity(0.20),
          blurRadius: 4.0,
          spreadRadius: 0.0,
          offset: const Offset(0.0, 4.0))
    ], color: boxTextFieldColor, borderRadius: BorderRadius.circular(40.r)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20.r,
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.arrow_upward,
            color: whiteColor,
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Account",
              style: styleB14.copyWith(fontSize: 10.sp, color: Colors.grey),
            ),
            Text(
              "Awais khan",
              style: styleB16,
            )
          ],
        ),
      ],
    ),
  );
}

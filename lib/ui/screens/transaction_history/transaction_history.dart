// ignore_for_file: use_key_in_widget_constructors

import 'package:bank_app/core/constant/colors.dart';
import 'package:bank_app/core/constant/text_style.dart';
import 'package:bank_app/ui/screens/transaction_history/transaction_history_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class TransactionHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TransactionHistoryViewModel(),
        child: Consumer<TransactionHistoryViewModel>(
            builder: (context, model, child) => Scaffold(
                  // ///
                  // /// App Bar
                  // ///
                  // appBar: AppBar(
                  //   backgroundColor: Colors.transparent,
                  //   shadowColor: Colors.transparent,
                  //   automaticallyImplyLeading: true,
                  // ),

                  ///
                  /// Start Body
                  ///
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 70.h,
                          ),
                          Text(
                            "Transaction History",
                            style: styleB25.copyWith(
                                color: blackColor, fontSize: 30.sp),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: blackColor.withOpacity(0.20),
                                            blurRadius: 4.0,
                                            spreadRadius: 0.0,
                                            offset: const Offset(0.0, 4.0))
                                      ],
                                      color: boxTextFieldColor,
                                      borderRadius:
                                          BorderRadius.circular(40.r)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "\$ 360,20",
                                                style: styleB16,
                                              ),
                                              Text(
                                                "September 15,2024",
                                                style: styleB14.copyWith(
                                                    fontSize: 10.sp),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "\$ 1,360,529",
                                            style: styleB16,
                                          ),
                                          Text(
                                            "Balance",
                                            style: styleB14.copyWith(
                                                fontSize: 10.sp),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              })
                        ],
                      ),
                    ),
                  ),
                )));
  }
}

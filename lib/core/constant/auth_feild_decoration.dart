import 'package:bank_app/core/constant/colors.dart';
import 'package:bank_app/core/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final authFieldDecoration = InputDecoration(
  hintText: "Enter your email",
  hintStyle: styleB14.copyWith(color: hintTextColor),
  prefixIconColor: whiteColor,
  suffixIconColor: whiteColor,
  fillColor: boxTextFieldColor,
  filled: true,
  contentPadding: const EdgeInsets.all(20),
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: whiteColor, width: 0.0),
      borderRadius: BorderRadius.circular(40.r)),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: whiteColor, width: 0.0),
      borderRadius: BorderRadius.circular(40.r)),
  errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: whiteColor, width: 0.0),
      borderRadius: BorderRadius.circular(40.r)),
  disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: whiteColor, width: 0.0),
      borderRadius: BorderRadius.circular(40.r)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: whiteColor, width: 0.0),
      borderRadius: BorderRadius.circular(40.r)),
);

class KWhiteColor {}

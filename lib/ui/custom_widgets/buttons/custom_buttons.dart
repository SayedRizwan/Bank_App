// ignore_for_file: must_be_immutable, library_private_types_in_public_api, use_super_parameters

import 'package:bank_app/core/constant/colors.dart';
import 'package:bank_app/core/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  String? name;
  VoidCallback? onPressed;
  Color? boxColor;
  Color? textColor;

  CustomButton({
    Key? key,
    required this.name,
    required this.onPressed,
    required this.textColor,
    this.boxColor,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
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
        widget.onPressed?.call();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
        ),
        child: AnimatedScale(
          scale: _isPressed ? 0.95 : 1.0,
          duration: const Duration(milliseconds: 100),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              height: 56.h,
              decoration: BoxDecoration(
                  color: widget.boxColor ?? blueColor,
                  borderRadius: BorderRadius.circular(96.r)),
              child: Text(
                "${widget.name}",
                style: styleB16.copyWith(color: widget.textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

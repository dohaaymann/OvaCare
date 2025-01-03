// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../Core/themes/Colors/ColorsStyle.dart';

class TextHeader extends StatelessWidget {
  final String? headertxt;
  final String? subtxt;

  const TextHeader({super.key, this.headertxt, this.subtxt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h,),
          Text(
            headertxt ?? "Welcome Back!",
            style:  GoogleFonts.acme(
              fontSize: 40.spMin,
              fontWeight: FontWeight.bold,
              color: ColorStyle.purple,
            )),
          //   TextStyle(
          //       fontSize: 35.spMin,
          //       fontWeight: FontWeight.bold,
          //       color: ColorStyle.purple),
          // ),
          // SizedBox(height: 8.h),
          Text(
            subtxt ??
                "We are excited to have you back, can't wait to see what you have been up to since you last logged in.",
            style:  TextStyle(fontSize: 15.spMin, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

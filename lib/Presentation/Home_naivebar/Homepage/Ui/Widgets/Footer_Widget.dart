import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/themes/Colors/ColorsStyle.dart';
Widget Footer() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recommentation Doctor",
            style: TextStyle(fontSize: 18.spMin, fontWeight: FontWeight.bold),
          ),
          Text(
            "See All",
            style: TextStyle(
                color:ColorStyle.purple,
                fontSize: 15.spMin,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    ],
  );
}
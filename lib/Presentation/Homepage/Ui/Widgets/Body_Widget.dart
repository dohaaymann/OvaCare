import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ovacare/Core/Routing/Routes.dart';

import '../../../../Core/themes/Colors/ColorsStyle.dart';

Widget Body(context) {
  return Column(
    children: [
      Container(
        height: 150.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9), // Shadow color with opacity
                spreadRadius: 5, // Spread radius
                blurRadius: 5, // Blur radius
                offset: const Offset(-2, 7),
                // Offset in x and y direction
              ),
            ],
            color: ColorStyle.white,
            image: const DecorationImage(
                image: AssetImage(
                  'assets/image (1).png',
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(color: ColorStyle.purple, width: 2.w)),
        child: Column(
          children: [
            const Spacer(),
            Text(
              'PCOS Assessment',
              style: TextStyle(
                  color: ColorStyle.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.spMin),
            ),
            Text(
              'Answer a series of questions\n to identify early signs of\nPolycystic Ovary Syndrome',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 12.spMin,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorStyle.pink,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.testPCOS);
                },
                child: const Text(
                  "Test PCOS",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            const Spacer(),
          ],
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Container(
        height: 150.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9), // Shadow color with opacity
                spreadRadius: 5, // Spread radius
                blurRadius: 5, // Blur radius
                offset: const Offset(-2, 7),
                // Offset in x and y direction
              ),
            ],
            color: ColorStyle.white,
            image: const DecorationImage(
                image: AssetImage(
                  'assets/image (2).png',
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(color: ColorStyle.purple, width: 2.w)),
        child: Column(
          children: [
            const Spacer(),
            Text(
              'PCOD Diagnosis',
              style: TextStyle(
                  color: ColorStyle.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.spMin),
            ),
            Text(
              'Upload an Ultrasound image to \n evaluate potential indicators\n of Polycystic Ovaries disease',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 12.spMin,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorStyle.pink,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.testPCOD);
                },
                child: const Text(
                  "Test PCOD",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            const Spacer(),
          ],
        ),
      ),
    ],
  );
}

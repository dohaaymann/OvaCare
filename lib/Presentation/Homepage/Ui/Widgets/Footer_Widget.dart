import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ovacare/Core/Routing/Routes.dart';

import '../../../../Core/themes/Colors/ColorsStyle.dart';
import '../../../doctor/ui/doctor_screen.dart';
import '../../../doctor/ui/widgets/doctor.dart';
import '../../../doctor/ui/widgets/doctor_list.dart';

Widget Footer(context) {
  final List<Doctor> doctors = const [
    Doctor(
      name: 'Dr. Dohaaaa',
      specialty: 'General',
      imageUrl: 'assets/doctor.png',
      hospital: 'RSUD Gatot Subroto',
      rating: '4.8',
      reviews: '4,279 reviews',
    ),
    Doctor(
      name: 'Dr. Nooooooooor',
      specialty: 'General',
      hospital: 'RSUD Gatot Subroto',
      rating: '4.8',
      reviews: '4,279 reviews',
      imageUrl: 'assets/doctor.png',
    ),
    // Doctor(
    //   name: 'Dr. Alaa',
    //   specialty: 'General',
    //   hospital: 'RSUD Gatot Subroto',
    //   rating: '4.8',
    //   reviews: '4,279 reviews',
    //   imageUrl: 'assets/image_doctor.png',
    // ),
  ];

  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recommentation Doctor",
            style: TextStyle(fontSize: 18.spMin, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.recommedDoc);
            },
            child: Text(
              "See All",
              style: TextStyle(
                  color: ColorStyle.purple,
                  fontSize: 15.spMin,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
      DoctorList(
        doctors: doctors,
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ovacare/Core/themes/Colors/ColorsStyle.dart';

import 'widgets/form_and_button.dart';
import 'widgets/text_header.dart';
import 'widgets/two_rich_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:20.w, vertical: 15.h),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextHeader(),
                SizedBox(height: 30.h),
                const FormAndButton(),
                SizedBox(height: 30.h),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: const Text("OR"),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 16.h),
                Container(
                  height: 55.h,
                  // padding: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorStyle.lightgray,width: 2.w),
                      borderRadius: BorderRadius.circular(16.r)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/Google.png",height:30.h,),
                      SizedBox(width:5.w,),
                      Text('Sign in with Google',style:TextStyle(fontSize:18.spMin,fontWeight: FontWeight.bold),)
                  ]),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 55.h,
                  // padding: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorStyle.lightgray,width: 2.w),
                      borderRadius: BorderRadius.circular(16.r)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook, color: Colors.blue,size:35.h,),
                      SizedBox(width:5.w,),
                      Text('Sign in with Facebook',style:TextStyle(fontSize:18.spMin,fontWeight: FontWeight.bold),)
                  ]),
                ),
                // CustomButton(
                //   name: 'Sign in with Google',
                //   ontap: () {},
                //   backgroundColor: Colors.white,
                //   width: double.infinity,
                //   height: 56.h,
                //   textColor: ColorStyle.black,
                //   icon:Image.asset("assets/Google.png",scale: 2,),
                // ),
                SizedBox(height:50.h),
                const Center(child: TwoRichText())
              ],
            ),
          ),
        ),
      ),
    );
  }
}

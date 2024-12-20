import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import 'package:ovacare/Core/Widgets/Custom_Button.dart';
import 'package:ovacare/Core/themes/Colors/ColorsStyle.dart';
class TestPcodView extends StatelessWidget {
  const TestPcodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyle.pink,
        title:Text("PCOD Test",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon:Icon(Icons.arrow_back_ios,color: Colors.white,) ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          children: [
            SizedBox(height: 8.h,),
            Text('To get the best results, please upload a clear ultrasound image of the ovary. Ensure the image is well-lit and in focus, with no glare or shadows. Supported formats: JPEG, PNG, and maximum file size of 5MB.',
              style: TextStyle(fontSize:16.spMin,color: ColorStyle.darkgray),
            ),
            SizedBox(height:20.h,),
            Container(
              height: 200.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // color: ColorStyle.lightgray,
                 borderRadius: BorderRadius.all(Radius.circular(16.r)),
                border: DashedBorder.fromBorderSide(
                    dashLength: 15, side: BorderSide(color: ColorStyle.gray, width: 2)),
              ),
              child: Container(
                // margin: EdgeInsets.symmetric(vertical:20.h),
                padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.image,size:70.h,color: ColorStyle.gray,),
                    SizedBox(height: 10.h,),
                    Text('Upload ultrasound image',style: TextStyle(color: ColorStyle.darkgray,fontSize:22.spMin,fontWeight: FontWeight.bold),),
                    Text('(up to 12 Mb)',style: TextStyle(color: ColorStyle.darkgray,fontSize:16.spMin,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            SizedBox(height:30.h,),
            CustomButton(name: 'Get Result', ontap:(){},width:300.w,height: 45.h,fontSize: 20.spMin,backgroundColor: ColorStyle.pink,)
          ],
        ),
      ),
    );
  }
}

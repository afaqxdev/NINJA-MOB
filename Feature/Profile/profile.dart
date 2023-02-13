import 'package:Ninja/Core/Helper/Color.dart';
import 'package:Ninja/Core/Helper/Common_Var.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../Core/Common_Widget/Custom_Text.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  AppColor appColor = AppColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor.mainColor,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 10.w),
          child: CircleAvatar(
              radius: 20.r,
              backgroundColor: appColor.buttonColor,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              )),
        ),
        title: CustomText(name: "Profile", size: 17.sp, color: appColor.white),
        centerTitle: true,
        actions: [
          Image.asset(
            "images/Edit.png",
            color: appColor.white,
            scale: 3,
          ),
          SizedBox(
            width: 5.w,
          )
        ],
      ),
      backgroundColor: appColor.mainColor,
      body: Column(children: [
        SizedBox(
          height: 25.w,
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 120.h,
            child: Stack(children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/bat.png'),
              ),
              Positioned(
                top: 90.h,
                left: 44.w,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: appColor.grey,
                  child: Icon(Icons.camera_alt_outlined),
                ),
              )
            ]),
          ),
        )
      ]),
    );
  }
}

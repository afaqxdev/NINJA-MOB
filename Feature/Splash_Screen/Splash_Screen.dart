// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../Core/Helper/Color.dart';
import '../Landing_Screen/load.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

splashservice splashServicce = splashservice();

class _SplashScreenState extends State<SplashScreen> {
  AppColor appcolor = AppColor();
  @override
  void initState() {
    splashServicce.singup(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.mainColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(child: Image.asset("images/logob.png")),
            Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 40.h),
                child: Lottie.asset("images/load2.json", height: 80.h))
          ],
        ),
      ),
    );
  }
}

class splashservice {
  void singup(BuildContext context) {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => loadd())));
  }
}

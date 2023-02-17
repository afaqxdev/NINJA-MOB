import 'package:Ninja/Core/Routes/routesName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/Common_Widget/Custom_Text.dart';
import '../../Core/Helper/Color.dart';
import '../../Core/Helper/Common_Var.dart';

class Dr extends StatefulWidget {
  const Dr({super.key});

  @override
  State<Dr> createState() => _DrState();
}

class _DrState extends State<Dr> {
  @override
  AppColor appcolor = AppColor();
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Drawer(
        backgroundColor: appcolor.buttonColor,
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, top: 30.h),
          child: ListView(children: [
            SizedBox(
              height: 190.h,
              child: DrawerHeader(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: 50.r,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                        ),
                      ),
                    ),
                    fixHeight,
                    Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        name: "Hey,",
                        size: 16.sp,
                        color: appcolor.white,
                      ),
                    ),
                    fixHeight,
                    Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                          name: "Afaq Zahir",
                          size: 23.sp,
                          color: appcolor.white),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              iconColor: appcolor.white,
              tileColor: appcolor.black.withOpacity(0.5),
              leading: Image.asset(
                "images/user.png",
                scale: 4,
                color: appcolor.white,
              ),
              title: CustomText(
                name: "Profile",
                size: 16.sp,
                color: appcolor.white,
              ),
            ),
            fixHeight,
            ListTile(
              iconColor: appcolor.white,
              tileColor: appcolor.black.withOpacity(0.5),
              leading: Image.asset(
                "images/home.png",
                scale: 4,
                color: appcolor.white,
              ),
              title: CustomText(
                name: "Home Page",
                size: 16.sp,
                color: appcolor.white,
              ),
            ),
            fixHeight,
            ListTile(
              iconColor: appcolor.white,
              tileColor: appcolor.black.withOpacity(0.5),
              leading: Image.asset(
                "images/Frame.png",
                scale: 4,
                color: appcolor.white,
              ),
              title: CustomText(
                name: "My Cart",
                size: 16.sp,
                color: appcolor.white,
              ),
            ),
            fixHeight,
            ListTile(
              iconColor: appcolor.white,
              tileColor: appcolor.black.withOpacity(0.5),
              leading: Image.asset(
                "images/Heart-Icon.png",
                scale: 4,
                color: appcolor.white,
              ),
              title: CustomText(
                name: "Favorite",
                size: 16.sp,
                color: appcolor.white,
              ),
            ),
            fixHeight,
            ListTile(
              iconColor: appcolor.white,
              tileColor: appcolor.black.withOpacity(0.5),
              leading: Image.asset(
                "images/Notifications.png",
                scale: 4,
                color: appcolor.white,
              ),
              title: CustomText(
                name: "Notification",
                size: 16.sp,
                color: appcolor.white,
              ),
            ),
            fixHeight,
            ListTile(
              iconColor: appcolor.white,
              tileColor: appcolor.black.withOpacity(0.5),
              leading: Image.asset(
                "images/Fats Delivery.png",
                scale: 4,
                color: appcolor.white,
              ),
              title: CustomText(
                name: "Order",
                size: 16.sp,
                color: appcolor.white,
              ),
            ),
            Height,
            InkWell(
              onTap: () {
                // FirebaseAuth.instance.signOut();
                // Get.offAll(sign_in());
              },
              child: ListTile(
                iconColor: appcolor.white,
                tileColor: appcolor.white.withOpacity(0.5),
                leading: Icon(Icons.logout_outlined),
                title: CustomText(
                  name: "Logout",
                  size: 16.sp,
                  color: appcolor.white,
                ),
              ),
            ),
          ]),
        ),
      ),
      onWillPop: () async {
        return true;
      },
    );
  }
}

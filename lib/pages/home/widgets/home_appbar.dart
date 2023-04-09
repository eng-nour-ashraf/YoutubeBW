import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:youtube_preview/base/controllers/theme/theme_controller.dart';
import 'package:youtube_preview/pages/home/home_controller.dart';
import '../../../base/resources/assets.dart';

class HomeAppbar extends StatelessWidget {
  final HomeController controller;
  final ThemeController themeController;
  const HomeAppbar({Key? key, required this.controller, required this.themeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeController.colorWhiteTheme,
      margin: EdgeInsets.only(
        top: 42.h,
        left: 21.w,
        right: 21.w,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'helloName'.trParams({
              'name': 'John Lee',
            }),
            style: TextStyle(
                fontFamily: ProjectAssets.fontFamily,
                fontSize: 20.sp,
                color: themeController.colorBlackTheme,
                fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          GestureDetector(
              onTap: controller.onNotification,
              child: Image.asset(
                ProjectAssets.notification,
                width: 25.w,
                height: 25.w,
                color: themeController.colorBlackTheme,
              )),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:youtube_preview/base/controllers/theme/theme_controller.dart';
import 'package:youtube_preview/pages/home/home_controller.dart';
import 'package:youtube_preview/pages/preview/preview_controller.dart';
import '../../../base/resources/assets.dart';
import '../../../base/resources/colors.dart';

class PreviewInfo extends StatelessWidget {
  final PreviewController controller;
  final ThemeController themeController;

  const PreviewInfo({Key? key, required this.controller,required this.themeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 36.h,
        left: 31.w,
        right: 31.w,
      ),
      child: Column(
        children: [
          Text(
            controller.title,
            style: TextStyle(
                fontFamily: ProjectAssets.fontFamily,
                fontSize: 18.sp,
                color: themeController.colorBlackTheme,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 7.h,
          ),
          Text(
            controller.des,
            style: TextStyle(
                fontFamily: ProjectAssets.fontFamily,
                fontSize: 14.sp,
                color: themeController.colorBlackTheme,
                fontWeight: FontWeight.w400),
          ),

        ],
      ),
    );
  }
}

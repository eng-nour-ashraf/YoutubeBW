import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:youtube_preview/base/controllers/theme/theme_controller.dart';
import 'package:youtube_preview/pages/home/home_controller.dart';
import 'package:youtube_preview/pages/preview/preview_controller.dart';
import '../../../base/resources/assets.dart';
import '../../../base/resources/colors.dart';

class PreviewBtn extends StatelessWidget {
  final PreviewController controller;
  final ThemeController themeController;

  const PreviewBtn({Key? key, required this.controller,required this.themeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 23.h,bottom: 5.h,right: 20.w,left: 20.w),
      height: 51.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: themeController.colorBlackTheme,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0).w,
            )),
        onPressed: () => controller.onReview(),
        child: Center(
          child: Text(
            'review'.tr,
            style: TextStyle(
                color: themeController.colorWhiteTheme,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:youtube_preview/base/controllers/theme/theme_controller.dart';
import 'package:youtube_preview/base/resources/colors.dart';
import 'package:youtube_preview/pages/home/home_controller.dart';
import '../../../base/resources/assets.dart';

class HomeSearch extends StatelessWidget {
  final HomeController controller;
  final ThemeController themeController;

  const HomeSearch({Key? key, required this.controller,required this.themeController,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      margin: EdgeInsets.only(left: 21.w, right: 21.w, top: 26.h),
      decoration: BoxDecoration(
        color: ProjectColors.colorGrey,
        borderRadius: BorderRadius.circular(18.w),
      ),
      child: TextField(
        controller: controller.searchTextEditingController,
        cursorColor: ProjectColors.colorBlack,
        keyboardType: TextInputType.text,
        onChanged: (value) => controller.onSearch(search: value),
        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500,fontFamily: ProjectAssets.fontFamily),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            isDense: true,
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(
                 left: 35.w, top: 12.50.h, bottom: 12.50.h),
            hintText: 'searchFV'.tr,
            hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            suffixIcon: GetBuilder(builder: (HomeController c) {
              return GestureDetector(
                onTap: controller.isSearching ? controller.onClearSearch: null,
                child: Padding(
                  padding: EdgeInsets.only(top: controller.isSearching ? 13.h: 10.h,bottom: controller.isSearching ? 13.h:10.h,right: controller.isSearching ? 24.w:10.w),
                  child: Image.asset(
                    controller.isSearching ? ProjectAssets.clear: ProjectAssets.search,
                    width:  25.w,
                    height:  25.h,
                  ),
                ),
              );
            })),
      ),
    );
  }
}

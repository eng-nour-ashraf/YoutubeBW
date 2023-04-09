import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:youtube_preview/base/controllers/theme/theme_controller.dart';
import 'package:youtube_preview/pages/home/home_controller.dart';
import '../../../base/app_widgets/app_loading.dart';


class HomeSearchListView extends StatelessWidget {
  final HomeController controller;
  final ThemeController themeController;

  const HomeSearchListView({Key? key, required this.controller,required this.themeController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.searchResults!.isEmpty
        ? Align(
      alignment: Alignment.center,
          child: Text(
              'noSearchResult'.trParams({
                'search': controller.searchKeyword,
              }),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.sp,
                  height: 1.5,
                  color: themeController.colorBlackTheme,
                  fontWeight: FontWeight.bold),
            ),
        )
        : Expanded(
            child: LazyLoadScrollView(
              onEndOfPage: controller.onLoadMore,
              child: ListView.builder(
                itemCount: controller.searchResults!.length,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: ()=> controller.onSearchPress(index: index),
                    child: Container(
                      height: 200.h,
                      width: controller.utilsController.getWidth(),
                      margin: EdgeInsets.only(bottom: 16.h),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28.w),
                        child: CachedNetworkImage(
                          placeholder: (context, url) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                  AppLoadingWidget(
                                    size: 60,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          fit: BoxFit.fill,
                          imageUrl: controller.searchResults![index].snippet!
                              .thumbnails!.medium!.url!,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
  }
}

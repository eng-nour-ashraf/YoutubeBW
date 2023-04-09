import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:youtube_preview/base/controllers/theme/theme_controller.dart';
import 'package:youtube_preview/pages/home/home_controller.dart';
import 'package:youtube_preview/pages/home/widgets/home_search_listview.dart';
import '../../../base/app_status/app_status.dart';
import '../../../base/app_widgets/app_error.dart';
import '../../../base/app_widgets/app_loading.dart';
import '../../../base/resources/assets.dart';
import 'home_popular_listview.dart';

class HomeListView extends StatelessWidget {
  final ThemeController themeController;
  const HomeListView({
    Key? key, required this.themeController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: themeController.colorWhiteTheme,
        margin: EdgeInsets.only(
          top: 25.h,
          left: 21.w,
          right: 21.w,
        ),
        child: GetBuilder(builder: (HomeController controller) {
          Widget currentWidget = Container();
          switch (controller.appStatus) {
            case AppStatus.init:
              currentWidget = Container();
              break;
            case AppStatus.loading:
              currentWidget = AppLoadingWidget(
                withText: true,
                color: themeController.colorBlackTheme,
                text: controller.isSearching ? 'searching' : 'loading',
              );
              break;
            case AppStatus.success:
              currentWidget = controller.isSearching
                  ? HomeSearchListView(controller: controller,themeController: themeController,)
                  : HomePopularListView(
                      controller: controller,themeController: themeController,
                    );
              break;
            case AppStatus.failed:
              currentWidget = AppErrorWidget(
                withTitle: false,
                imgWidth: 50.w,
                imgHeight: 50.w,
                color: themeController.colorBlackTheme,
                color2: themeController.colorWhiteTheme,
                img: themeController.getCurrentTheme()== 'light' ? ProjectAssets.error : ProjectAssets.errorWhite,
                tryAgain: () => controller.isSearching
                    ? controller.onLoadSearchResults()
                    : controller.onLoadVideos(),
              );
              break;
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                controller.isSearching ? 'results'.tr : 'vfy'.tr,
                style: TextStyle(
                    fontFamily: ProjectAssets.fontFamily,
                    fontSize: 18.sp,
                    color: themeController.colorBlackTheme,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16.h,
              ),
              currentWidget,
              controller.isLoadingMore
                  ? AppLoadingWidget(
                      size: 30,
                color: themeController.colorBlackTheme,
                    )
                  : Container(),
            ],
          );
        }),
      ),
    );
  }
}

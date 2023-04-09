import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_preview/base/controllers/theme/theme_controller.dart';
import 'package:youtube_preview/pages/home/widgets/home_appbar.dart';
import 'package:youtube_preview/pages/home/widgets/home_listview.dart';
import 'package:youtube_preview/pages/home/widgets/home_search.dart';
import 'home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.find();

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (ThemeController themeController) {
        return Scaffold(
          backgroundColor: themeController.colorWhiteTheme,
          body: Column(
            children: [
              HomeAppbar(
                controller: controller, themeController: themeController,
              ),
              HomeSearch(
                controller: controller,
                themeController: themeController,
              ),
              HomeListView(themeController: themeController,),
            ],
          ),
        );
      }
    );
  }
}

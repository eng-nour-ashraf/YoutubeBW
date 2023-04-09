import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:youtube_preview/base/resources/colors.dart';
import 'package:youtube_preview/pages/preview/widgets/preview_appbar.dart';
import 'package:youtube_preview/pages/preview/widgets/preview_btn.dart';
import 'package:youtube_preview/pages/preview/widgets/preview_info.dart';
import 'package:youtube_preview/pages/preview/widgets/preview_video.dart';

import '../../base/controllers/theme/theme_controller.dart';
import 'preview_controller.dart';

class PreviewView extends StatelessWidget {
  final PreviewController controller = Get.find();

  PreviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      controller: controller.youtubePlayerController,
      aspectRatio: controller.width/ controller.high,
      builder: (BuildContext context, Widget player) {
        return GetBuilder(
          builder: (ThemeController themeController) {
            return Scaffold(
              backgroundColor: themeController.colorWhiteTheme,
              body: ListView(
                shrinkWrap: true,
                children: [
                  PreviewAppbar(controller: controller,themeController : themeController),
                  PreviewVideo(player: player,themeController : themeController),
                  PreviewInfo(controller: controller,themeController : themeController),
                  PreviewBtn(controller: controller,themeController : themeController),
                ],
              ),
            );
          }
        );
      },
    );
  }
}

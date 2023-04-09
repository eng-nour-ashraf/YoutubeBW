import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' as gt;
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:youtube_preview/base/controllers/utils/utils_controller.dart';
import '../../base/app_status/app_status.dart';
import '../../base/controllers/log/log_controller.dart';

class PreviewController extends gt.GetxController {
  //  controllers

  LogController logController = gt.Get.find();
  UtilsController utilsController = gt.Get.find();

  //***************************************************************************************************************

  //  variables

  AppStatus appStatus = AppStatus.init;
  String videoId = '';
  String title = '';
  String des = '';
  var width = 335.w;
  var high = 478.h;
  late YoutubePlayerController youtubePlayerController;

  //***************************************************************************************************************

  //  status

  @override
  void onInit() {
    logController.red(msg: 'init Preview controller');
    videoId = gt.Get.parameters['videoId']!;
    title = gt.Get.parameters['videoName']!;
    des = gt.Get.parameters['videoDes']!;
    youtubePlayerController = YoutubePlayerController.fromVideoId(
      videoId: videoId,
      autoPlay: false,
      params: const YoutubePlayerParams(
        showFullscreenButton: true,
        showControls: false,
      ),
    );
    super.onInit();
  }

  @override
  void onReady() {
    logController.red(msg: 'ready Preview controller');
    super.onReady();
  }

  @override
  void onClose() {
    logController.red(msg: 'close Preview controller');
    super.onClose();
  }

//***************************************************************************************************************

//  methods

  void onNotification() {}

  void onReview() {}
}

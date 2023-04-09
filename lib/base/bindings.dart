import 'package:get/get.dart';
import 'package:youtube_preview/pages/home/home_controller.dart';
import 'package:youtube_preview/pages/preview/preview_controller.dart';
import 'controllers/local/localization_controller.dart';
import 'controllers/log/log_controller.dart';
import 'controllers/network/api_controller.dart';
import 'controllers/theme/theme_controller.dart';
import 'controllers/utils/utils_controller.dart';


class MainBindings implements Bindings {
  @override
  void dependencies() {
    //Services
    Get.put(ApiController(),permanent: true);
    Get.put(ThemeController(),permanent: true);
    Get.lazyPut(() => LocalizationController(), fenix: true);
    Get.lazyPut(() => LogController(), fenix: true);
    Get.lazyPut(() => UtilsController(), fenix: true);

    //View
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => PreviewController(), fenix: true);
  }
}

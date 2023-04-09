import 'package:get/get.dart';
import 'package:youtube_preview/pages/home/home_view.dart';
import 'package:youtube_preview/pages/preview/preview_view.dart';

class NavigationController {
  static List<GetPage<dynamic>> getRouters() {
    return [
      GetPage(
          name: "/home",
          page: () => HomeView(),
          transition: Transition.fade,
          transitionDuration: const Duration(milliseconds: 500)),
      GetPage(
          name: "/preview",
          page: () => PreviewView(),
          transition: Transition.fade,
          transitionDuration: const Duration(milliseconds: 500)),
    ];
  }
}

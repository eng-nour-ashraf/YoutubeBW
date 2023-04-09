import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:youtube_preview/base/resources/assets.dart';
import 'base/bindings.dart';
import 'base/controllers/local/local_translations.dart';
import 'base/controllers/navigation/navigation_controller.dart';

void main() async {
  // run app
  WidgetsFlutterBinding.ensureInitialized();
  // Http Configure

  ByteData data =
  await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
  SecurityContext.defaultContext
      .setTrustedCertificatesBytes(data.buffer.asUint8List());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //init Route
    var initRoute = '/home';

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: false,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          title: 'Youtube B&W',
          debugShowCheckedModeBanner: false,
          translations: LocalTranslations(),
          locale: const Locale('en', ''),
          initialBinding: MainBindings(),
          defaultTransition: Transition.fade,
          getPages: NavigationController.getRouters(),
          fallbackLocale: const Locale('en', ''),
          initialRoute: initRoute,
          theme: ThemeData(
            primaryColor: const Color(0xFF000000),
            fontFamily: ProjectAssets.fontFamily,
          ),

        );
      },
    );
  }
}

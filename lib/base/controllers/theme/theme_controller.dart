import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  String currentTheme = 'light';

  // White
  Color get colorWhiteTheme => currentTheme == 'light'
      ? const Color(0xFFFFFFFF)
      : const Color(0xFF000000);

  // Black
  Color get colorBlackTheme => currentTheme == 'light'
      ? const Color(0xFF000000)
      : const Color(0xFFFFFFFF);


  void onCheckSystemThemeChange() {
    final window = WidgetsBinding.instance.platformDispatcher;
    window.onPlatformBrightnessChanged = () {
      final brightness = window.platformBrightness;
      currentTheme = brightness == Brightness.dark ? 'dark' : 'light';
      update();
    };
  }

  void onCheckCurrentSystemTheme(){
    var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    currentTheme = brightness == Brightness.dark ? 'dark' : 'light';
    update();
  }

  // get current theme
  String getCurrentTheme(){
    return currentTheme;
  }

  // change manual dark
  void darkMode(){
    currentTheme = 'dark';
    update();
  }

  // change manual light
  void lightMode(){
    currentTheme = 'light';
    update();
  }

  //change from dark to light & light to dark
  void switchDarkLight() {
    currentTheme = currentTheme == 'light' ? 'dark' : 'light';
    update();
  }

  @override
  void onInit() {
    onCheckCurrentSystemTheme();
    onCheckSystemThemeChange();
    super.onInit();
  }
}

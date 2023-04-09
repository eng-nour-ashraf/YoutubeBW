import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../resources/assets.dart';
import '../resources/colors.dart';

class AppErrorWidget extends StatelessWidget {
  final double imgWidth;
  final double imgHeight;
  final double titleFontSize;
  final double desFontSize;
  final double btnFontSize;
  final double space;
  final bool withTitle;
  final bool withDes;
  final bool withBtn;
  final VoidCallback? tryAgain;
  Color? color;
  Color? color2;
  String? img;

  AppErrorWidget(
      {Key? key,
        this.color,
        this.color2,
        this.img,
        this.withBtn = true,
        this.withTitle = true,
        this.withDes = true,
      this.imgHeight = 80,
      this.imgWidth = 80,
      this.titleFontSize = 20,
      this.desFontSize = 17,
      this.btnFontSize = 17,
      this.space = 10,
      required this.tryAgain})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    color ??= ProjectColors.colorBlack;
    color2 ??= ProjectColors.colorWhite;
    img ??= ProjectAssets.error;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          img!,
          width: imgWidth,
          height: imgHeight,
        ),
        SizedBox(
          height: withTitle ? space : 0,
        ),
        withTitle ? Text(
          'error'.tr,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: titleFontSize,
          ),
        ) : Container(),
        SizedBox(
          height: withDes ? space : 0,
        ),
        withDes ? Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'errorMsg'.tr,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.7,
              fontWeight: FontWeight.normal,
              fontSize: desFontSize,
              color: color,
            ),
          ),
        ) : Container(),
        SizedBox(
          height: withBtn ? space + 5 : 0,
        ),
        withBtn ? ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              )
          ),
          onPressed: tryAgain,
          child: Text(
            'tryAgain'.tr,
            style: TextStyle(
              color: color2,
              fontWeight: FontWeight.normal,
              fontSize: btnFontSize,
            ),
          ),
        ) : Container(),
      ],
    );
  }
}

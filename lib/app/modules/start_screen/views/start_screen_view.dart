import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining/app/routes/app_pages.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/submit_button.dart';
import 'package:mining/utilities/widget_utils.dart';

import '../controllers/start_screen_controller.dart';

class StartScreenView extends GetWidget<StartScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MySize.safeWidth,
          height: MySize.safeHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MySize.size50,
                width: MySize.screenWidth,
                color: appTheme.primaryTheme.withOpacity(0.1),
                child: Center(
                  child: Text(
                    // "BTC mining",
                    "Mining",
                    style: TextStyle(
                        color: appTheme.whiteColor,
                        fontWeight: FontWeight.w500,
                        fontSize: MySize.size20),
                  ),
                ),
              ),
              getBannerAd(),
              Expanded(
                child: Container(
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.HOME);
                      },
                      child: button(
                          borderRadius: 20,
                          width: 300,
                          title: "Start Application",
                          textSize: MySize.size20),
                    ),
                  ),
                ),
              ),
              nativeBannerAd(),
            ],
          ),
        ),
      ),
    );
  }
}

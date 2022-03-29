import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/widget_utils.dart';

import '../controllers/mining_page_controller.dart';

class MiningPageView extends GetWidget<MiningPageController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MiningPageController>(
        init: MiningPageController(),
        builder: (controller) {
          return Obx(() {
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
                            // "Boost Mining",
                            "Boost",
                            style: TextStyle(
                                color: appTheme.whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: MySize.size20),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: MySize.getScaledSizeWidth(10),
                              vertical: MySize.size15!),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Container(
                                //   alignment: Alignment(0.5, 1),
                                //   child: FacebookBannerAd(
                                //     placementId: Platform.isAndroid
                                //         ? "412479446406458_568694384118296"
                                //         : "YOUR_IOS_PLACEMENT_ID",
                                //     bannerSize: BannerSize.STANDARD,
                                //     listener: (result, value) {
                                //       switch (result) {
                                //         case BannerAdResult.ERROR:
                                //           print("Error: $value");
                                //           break;
                                //         case BannerAdResult.LOADED:
                                //           print("Loaded: $value");
                                //           break;
                                //         case BannerAdResult.CLICKED:
                                //           print("Clicked: $value");
                                //           break;
                                //         case BannerAdResult.LOGGING_IMPRESSION:
                                //           print("Logging Impression: $value");
                                //           break;
                                //       }
                                //     },
                                //   ),
                                // ),
                                Container(
                                  width: double.infinity,
                                  child: FacebookBannerAd(
                                      bannerSize: BannerSize.STANDARD,
                                      keepAlive: true,
                                      placementId:
                                          "IMG_16_9_LINK#YOUR_PLACEMENT_ID"
                                      // "IMG_16_9_LINK#YOUR_PLACEMENT_ID",
                                      ),
                                ),
                                // FacebookNativeAd(
                                //   placementId:
                                //       // "412479446406458_568694384118296",
                                //       "IMG_16_9_LINK#YOUR_PLACEMENT_ID",
                                //   adType: NativeAdType.NATIVE_BANNER_AD,
                                //   width: double.infinity,
                                //   height: 300,
                                //   backgroundColor: Colors.blue,
                                //   titleColor: Colors.white,
                                //   descriptionColor: Colors.white,
                                //   buttonColor: Colors.deepPurple,
                                //   buttonTitleColor: Colors.white,
                                //   buttonBorderColor: Colors.white,
                                //   keepAlive:
                                //       true, //set true if you do not want adview to refresh on widget rebuild
                                //   keepExpandedWhileLoading:
                                //       false, // set false if you want to collapse the native ad view when the ad is loading
                                //   expandAnimationDuraion:
                                //       300, //in milliseconds. Expands the adview with animation when ad is loaded
                                //   listener: (result, value) {
                                //     print("Native Ad: $result --> $value");
                                //   },
                                // ),
                                //
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   crossAxisAlignment: CrossAxisAlignment.center,
                                //   children: [
                                //     Image(
                                //       image: AssetImage("assets/wallet.png"),
                                //       height: MySize.size40,
                                //       width: MySize.getScaledSizeWidth(40),
                                //       color: Colors.white,
                                //     ),
                                //     SizedBox(
                                //       width: MySize.getScaledSizeWidth(10),
                                //     ),
                                //     Text(
                                //       controller.homeController.value.totalAmt
                                //               .toStringAsFixed(6) +
                                //           " BTC",
                                //       style: TextStyle(
                                //           fontSize: MySize.size22,
                                //           fontWeight: FontWeight.w500),
                                //     )
                                //   ],
                                // ),
                                // SizedBox(
                                //   height: MySize.size40,
                                // ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          child: Container(
                                            height: MySize.size35,
                                            width:
                                                MySize.getScaledSizeWidth(80),
                                            decoration: BoxDecoration(
                                                color: (controller
                                                        .homeController
                                                        .value
                                                        .isActive25
                                                        .value)
                                                    ? Colors.transparent
                                                    : appTheme.primaryTheme,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        MySize.size50!),
                                                border: Border.all(
                                                  color: appTheme.primaryTheme,
                                                )),
                                            child: Center(
                                              child: Text(
                                                "Speed 25",
                                                style: TextStyle(
                                                    color: appTheme.whiteColor,
                                                    fontSize: MySize.size12),
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            controller.homeController.value
                                                .isActive25.value = true;
                                            controller.homeController.value
                                                .isActive50.value = false;
                                            controller.homeController.value
                                                .isActive75.value = false;
                                            controller.homeController.value
                                                .isActive100.value = false;
                                            controller.update();
                                            if (controller.homeController.value
                                                    .timer !=
                                                null) {
                                              controller
                                                  .homeController.value.timer!
                                                  .cancel();
                                            }
                                            controller.homeController.value
                                                .startTimer(controller
                                                    .homeController
                                                    .value
                                                    .time25
                                                    .value);
                                          },
                                        ),
                                        SizedBox(
                                          height: MySize.size9,
                                        ),
                                        Text(
                                          "Boost 25%",
                                          style: TextStyle(
                                              color: appTheme.whiteColor
                                                  .withOpacity(0.8),
                                              fontSize: MySize.size12),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            controller.homeController.value
                                                .isActive25.value = false;
                                            controller.homeController.value
                                                .isActive50.value = true;
                                            controller.homeController.value
                                                .isActive75.value = false;
                                            controller.homeController.value
                                                .isActive100.value = false;
                                            controller.update();
                                            if (controller.homeController.value
                                                    .timer !=
                                                null) {
                                              controller
                                                  .homeController.value.timer!
                                                  .cancel();
                                            }
                                            controller.homeController.value
                                                .startTimer(controller
                                                    .homeController
                                                    .value
                                                    .time50
                                                    .value);
                                          },
                                          child: Container(
                                            height: MySize.size35,
                                            width:
                                                MySize.getScaledSizeWidth(80),
                                            decoration: BoxDecoration(
                                                color: (controller
                                                        .homeController
                                                        .value
                                                        .isActive50
                                                        .value)
                                                    ? Colors.transparent
                                                    : appTheme.primaryTheme,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        MySize.size50!),
                                                border: Border.all(
                                                  color: appTheme.primaryTheme,
                                                )),
                                            child: Center(
                                              child: Text(
                                                "Speed 50",
                                                style: TextStyle(
                                                    color: appTheme.whiteColor,
                                                    fontSize: MySize.size12),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: MySize.size9,
                                        ),
                                        Text(
                                          "Boost 50%",
                                          style: TextStyle(
                                              color: appTheme.whiteColor
                                                  .withOpacity(0.8),
                                              fontSize: MySize.size12),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            controller.homeController.value
                                                .isActive25.value = false;
                                            controller.homeController.value
                                                .isActive50.value = false;
                                            controller.homeController.value
                                                .isActive75.value = true;
                                            controller.homeController.value
                                                .isActive100.value = false;
                                            controller.update();
                                            if (controller.homeController.value
                                                    .timer !=
                                                null) {
                                              controller
                                                  .homeController.value.timer!
                                                  .cancel();
                                            }
                                            controller.homeController.value
                                                .startTimer(controller
                                                    .homeController
                                                    .value
                                                    .time75
                                                    .value);
                                          },
                                          child: Container(
                                            height: MySize.size35,
                                            width:
                                                MySize.getScaledSizeWidth(80),
                                            decoration: BoxDecoration(
                                                color: (controller
                                                        .homeController
                                                        .value
                                                        .isActive75
                                                        .value)
                                                    ? Colors.transparent
                                                    : appTheme.primaryTheme,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        MySize.size50!),
                                                border: Border.all(
                                                  color: appTheme.primaryTheme,
                                                )),
                                            child: Center(
                                              child: Text(
                                                "Speed 75",
                                                style: TextStyle(
                                                    color: appTheme.whiteColor,
                                                    fontSize: MySize.size12),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: MySize.size9,
                                        ),
                                        Text(
                                          "Boost 75%",
                                          style: TextStyle(
                                              color: appTheme.whiteColor
                                                  .withOpacity(0.8),
                                              fontSize: MySize.size12),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            controller.homeController.value
                                                .isActive25.value = false;
                                            controller.homeController.value
                                                .isActive50.value = false;
                                            controller.homeController.value
                                                .isActive75.value = false;
                                            controller.homeController.value
                                                .isActive100.value = true;
                                            controller.update();
                                            if (controller.homeController.value
                                                    .timer !=
                                                null) {
                                              controller
                                                  .homeController.value.timer!
                                                  .cancel();
                                            }
                                            controller.homeController.value
                                                .startTimer(controller
                                                    .homeController
                                                    .value
                                                    .time100
                                                    .value);
                                          },
                                          child: Container(
                                            height: MySize.size35,
                                            width:
                                                MySize.getScaledSizeWidth(80),
                                            decoration: BoxDecoration(
                                                color: (controller
                                                        .homeController
                                                        .value
                                                        .isActive100
                                                        .value)
                                                    ? Colors.transparent
                                                    : appTheme.primaryTheme,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        MySize.size50!),
                                                border: Border.all(
                                                  color: appTheme.primaryTheme,
                                                )),
                                            child: Center(
                                              child: Text(
                                                "Speed 100",
                                                style: TextStyle(
                                                    color: appTheme.whiteColor,
                                                    fontSize: MySize.size12),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: MySize.size9,
                                        ),
                                        Text(
                                          "Boost 100%",
                                          style: TextStyle(
                                              color: appTheme.whiteColor
                                                  .withOpacity(0.8),
                                              fontSize: MySize.size12),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: MySize.size40,
                                ),
                                (controller.homeController.value.isPlay.value)
                                    ? Column(
                                        children: [
                                          SizedBox(
                                            height: MySize.size70,
                                          ),
                                          Text(
                                            Duration(
                                                        seconds: controller
                                                            .homeController
                                                            .value
                                                            .totalSeconds
                                                            .value)
                                                    .inHours
                                                    .remainder(60 * 60)
                                                    .toString()
                                                    .padLeft(2, "0") +
                                                ":" +
                                                Duration(
                                                        seconds: controller
                                                            .homeController
                                                            .value
                                                            .totalSeconds
                                                            .value)
                                                    .inMinutes
                                                    .remainder(60)
                                                    .toString()
                                                    .padLeft(2, "0") +
                                                ":" +
                                                Duration(
                                                        seconds: controller
                                                            .homeController
                                                            .value
                                                            .totalSeconds
                                                            .value)
                                                    .inSeconds
                                                    .remainder(60)
                                                    .toString()
                                                    .padLeft(2, "0"),
                                            style: TextStyle(
                                                fontSize: MySize.size16,
                                                color: appTheme.whiteColor),
                                          ),
                                          SizedBox(
                                            height: MySize.size70,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              controller.homeController.value
                                                  .isPlay.value = false;
                                              if (controller.homeController
                                                      .value.timer !=
                                                  null) {
                                                controller
                                                    .homeController.value.timer!
                                                    .cancel();
                                              }
                                            },
                                            child: Container(
                                              height: MySize.size35,
                                              width:
                                                  MySize.getScaledSizeWidth(80),
                                              decoration: BoxDecoration(
                                                color: appTheme.primaryTheme,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        MySize.size50!),
                                                border: Border.all(
                                                  color: appTheme.primaryTheme,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Stop",
                                                  style: TextStyle(
                                                      color:
                                                          appTheme.whiteColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: MySize.size16),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : GestureDetector(
                                        onTap: () {
                                          controller.homeController.value.isPlay
                                              .value = true;
                                          int sec = 0;
                                          if (controller.homeController.value
                                              .isActive100.value) {
                                            sec = controller.homeController
                                                .value.time100.value;
                                          } else if (controller.homeController
                                              .value.isActive75.value) {
                                            sec = controller.homeController
                                                .value.time75.value;
                                          } else if (controller.homeController
                                              .value.isActive50.value) {
                                            sec = controller.homeController
                                                .value.time50.value;
                                          } else {
                                            sec = controller.homeController
                                                .value.time25.value;
                                          }
                                          controller.homeController.value
                                              .startTimer(sec);
                                        },
                                        child: CircleAvatar(
                                          radius: MySize.size70,
                                          backgroundColor:
                                              appTheme.primaryTheme,
                                          child: Image(
                                            image:
                                                AssetImage("assets/play.png"),
                                            color: appTheme.whiteColor,
                                            height: MySize.size30,
                                            width: MySize.size30,
                                          ),
                                        ),
                                      ),
                                getBannerAd(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
        });
  }
}

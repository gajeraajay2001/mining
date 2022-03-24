import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/widget_utils.dart';

import '../controllers/bitcoin_guide_page_controller.dart';

class BitcoinGuidePageView extends GetWidget<BitcoinGuidePageController> {
  @override
  Widget build(BuildContext context) {
    // Get.lazyPut<BitcoinGuidePageController>(
    //       () => BitcoinGuidePageController(),
    // );
    return GetBuilder<BitcoinGuidePageController>(
        init: BitcoinGuidePageController(),
        builder: (controller) {
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
                          "Bonus",
                          style: TextStyle(
                              color: appTheme.whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: MySize.size20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: MySize.size10!),
                        child: ListView.separated(
                            itemBuilder: (context, i) {
                              return Container(
                                width: double.infinity,
                                // height: MySize.size150,
                                decoration: BoxDecoration(
                                    color: appTheme.secondaryColor,
                                    borderRadius:
                                        BorderRadius.circular(MySize.size15!),
                                    border: Border.all(
                                        color: appTheme.primaryTheme,
                                        width: MySize.size2!)),
                                margin: EdgeInsets.symmetric(
                                  horizontal: MySize.getScaledSizeWidth(15),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: MySize.size15,
                                    ),
                                    Text(
                                      controller.allData[i].magaTitle
                                          .toString(),
                                      style: TextStyle(
                                          color: appTheme.whiteColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: MySize.size20),
                                    ),
                                    SizedBox(
                                      height: MySize.size15,
                                    ),
                                    Text(
                                      controller.allData[i].data.toString(),
                                      style: TextStyle(
                                          color: appTheme.whiteColor,
                                          fontSize: MySize.size14),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: MySize.size30,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        controller.openDataScreen(
                                            controller.allData[i]);
                                      },
                                      child: Container(
                                        height: MySize.size38,
                                        decoration: BoxDecoration(
                                          color: appTheme.primaryTheme,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        width: MySize.getScaledSizeWidth(100),
                                        child: Center(
                                          child: Text(
                                            controller.allData[i].buttonName
                                                .toString(),
                                            style: TextStyle(
                                                color: appTheme.whiteColor,
                                                fontSize: MySize.size16),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: MySize.size15,
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, i) {
                              return (i % 3 == 0)
                                  ? Padding(
                                      padding:
                                          EdgeInsets.only(top: MySize.size20!),
                                      child: getBannerAd(),
                                    )
                                  : SizedBox(
                                      height: MySize.size20,
                                    );
                            },
                            itemCount: controller.allData.length),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

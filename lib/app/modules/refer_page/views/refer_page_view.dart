import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/moduleConstant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/widget_utils.dart';
import 'package:share_plus/share_plus.dart';

import '../controllers/refer_page_controller.dart';

class ReferPageView extends GetView<ReferPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MySize.safeHeight,
          width: MySize.safeWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getAppBar(ModuleConstant.MODULE_TYPE_REFER),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MySize.getScaledSizeWidth(10),
                      vertical: MySize.size10!),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Your Referral Code",
                        style: TextStyle(
                            color: appTheme.primaryTheme,
                            fontSize: MySize.size16),
                      ),
                      SizedBox(
                        height: MySize.size15,
                      ),
                      Text(
                        "855696",
                        style: TextStyle(
                            color: appTheme.whiteColor,
                            fontSize: MySize.size16),
                      ),
                      getBannerAd(),
                      SizedBox(
                        height: MySize.size15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Share.share('855696');
                            },
                            child: Container(
                              height: MySize.size40,
                              padding: EdgeInsets.symmetric(
                                  horizontal: MySize.getScaledSizeWidth(10)),
                              decoration: BoxDecoration(
                                  color: appTheme.secondaryColor,
                                  borderRadius:
                                      BorderRadius.circular(MySize.size12!),
                                  border: Border.all(
                                      color: appTheme.primaryTheme,
                                      width: MySize.size2!)),
                              child: Container(
                                height: MySize.size20,
                                width: MySize.size20,
                                child: Image(
                                  image: AssetImage("assets/share.png"),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MySize.getScaledSizeWidth(20),
                          ),
                          GestureDetector(
                            onTap: () {
                              Clipboard.setData(ClipboardData(text: "855696"));
                            },
                            child: Container(
                              height: MySize.size40,
                              padding: EdgeInsets.symmetric(
                                  horizontal: MySize.getScaledSizeWidth(10)),
                              decoration: BoxDecoration(
                                  color: appTheme.secondaryColor,
                                  borderRadius:
                                      BorderRadius.circular(MySize.size12!),
                                  border: Border.all(
                                      color: appTheme.primaryTheme,
                                      width: MySize.size2!)),
                              child: Container(
                                height: MySize.size20,
                                width: MySize.size20,
                                child: Image(
                                  image: AssetImage("assets/copy.png"),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      facebookNativeAd(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

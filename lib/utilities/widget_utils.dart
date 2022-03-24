import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/moduleConstant.dart';
import 'package:mining/constants/sizeConstant.dart';

Container getAppBar(int moduleType, {bool isBack = true}) {
  return Container(
    height: MySize.size50,
    width: MySize.screenWidth,
    color: appTheme.primaryTheme.withOpacity(0.1),
    child: Stack(
      children: [
        (isBack)
            ? Container(
                height: MySize.size50,
                width: MySize.screenWidth,
                padding: EdgeInsets.only(left: MySize.getScaledSizeWidth(15)),
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: MySize.getScaledSizeWidth(40),
                    height: MySize.size50,
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: MySize.size18,
                    ),
                  ),
                ),
              )
            : SizedBox(),
        Container(
          child: Center(
            child: Text(
              getScreenTitle(moduleType),
              style: TextStyle(
                  color: appTheme.whiteColor,
                  fontWeight: FontWeight.w500,
                  fontSize: MySize.size20),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget getBannerAd() {
  return Container(
    width: double.infinity,
    child: FacebookBannerAd(
      bannerSize: BannerSize.STANDARD,
      keepAlive: true,
      placementId: "412479446406458_568694384118296",
      // "IMG_16_9_LINK#YOUR_PLACEMENT_ID",
    ),
  );
}

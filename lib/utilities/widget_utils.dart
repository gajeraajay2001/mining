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

Widget nativeBannerAd() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(10)),
    width: double.infinity,
    child: FacebookNativeAd(
      placementId: "412479446406458_580568482930886",
      adType: NativeAdType.NATIVE_BANNER_AD,
      bannerAdSize: NativeBannerAdSize.HEIGHT_100,
      width: double.infinity,
      backgroundColor: Colors.blue,
      titleColor: Colors.white,
      descriptionColor: Colors.white,
      buttonColor: Colors.deepPurple,
      buttonTitleColor: Colors.white,
      buttonBorderColor: Colors.white,
      listener: (result, value) {
        print("Native Ad: $result --> $value");
      },
    ),
  );
}

Widget facebookNativeAd() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: MySize.getScaledSizeHeight(10)),
    child: FacebookNativeAd(
      placementId: "412479446406458_580567736264294",
      adType: NativeAdType.NATIVE_AD,
      width: double.infinity,
      //height: 300,
      backgroundColor: Colors.blue,
      titleColor: Colors.white,
      descriptionColor: Colors.white,
      buttonColor: Colors.deepPurple,
      buttonTitleColor: Colors.white,
      buttonBorderColor: Colors.white,
      keepAlive:
          true, //set true if you do not want adview to refresh on widget rebuild
      keepExpandedWhileLoading:
          false, // set false if you want to collapse the native ad view when the ad is loading
      expandAnimationDuraion:
          300, //in milliseconds. Expands the adview with animation when ad is loaded
      listener: (result, value) {
        print("Native Ad: $result --> $value");
      },
    ),
  );
}

interstialAd() {
  return FacebookInterstitialAd.loadInterstitialAd(
    placementId: "412479446406458_580565886264479",
    listener: (result, value) {
      if (result == InterstitialAdResult.LOADED)
        FacebookInterstitialAd.showInterstitialAd(delay: 1000);
    },
  );
}

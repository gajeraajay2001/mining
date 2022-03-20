import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining/app/routes/app_pages.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/moduleConstant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/widget_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/btc_start_view_screen_controller.dart';

class BtcStartViewScreenView extends GetWidget<BtcStartViewScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MySize.safeHeight,
          width: MySize.safeWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              getAppBar(ModuleConstant.MODULE_TYPE_BTC_START),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container getWidget(
      {String? no,
      String? title,
      String? data,
      bool isButton = false,
      String? buttonName,
      int? actionType}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MySize.getScaledSizeWidth(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MySize.size38,
            width: MySize.size38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MySize.size100!),
              border: Border.all(width: 3, color: appTheme.whiteColor),
            ),
            child: Center(
              child: Text(
                no!,
                style: TextStyle(fontSize: MySize.size18),
              ),
            ),
          ),
          SizedBox(
            width: MySize.getScaledSizeWidth(40),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: TextStyle(
                      color: appTheme.whiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: MySize.size18),
                ),
                SizedBox(
                  height: MySize.size15,
                ),
                Text(
                  data!,
                  style: TextStyle(
                      color: appTheme.whiteColor,
                      fontWeight: FontWeight.normal,
                      height: 1.3,
                      fontSize: MySize.size14),
                ),
                SizedBox(
                  height: MySize.size10,
                ),
                (isButton)
                    ? Row(
                        children: [
                          InkWell(
                            onTap: () async {
                              switch (actionType) {
                                case ActionType.ACTION_TYPE_ACCOUNT_TAXES:
                                  const url =
                                      "https://en.bitcoin.it/wiki/Tax_compliance";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                  break;
                                case ActionType.ACTION_TYPE_MERCHENT_SERVICE:
                                  const url =
                                      "https://en.bitcoin.it/wiki/How_to_accept_Bitcoin,_for_small_businesses#Merchant_Services";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                  break;
                                case ActionType.ACTION_TYPE_INFORM_YOUR_SELF:
                                  Get.toNamed(Routes.GUIDE_DETAIL_SCREEN,
                                      arguments: {
                                        ArgumentConstant.ActionType: actionType,
                                        ArgumentConstant.ModuleType:
                                            ModuleConstant
                                                .MODULE_TYPE_INFORM_YOUR_SELF
                                      });

                                  break;
                                case ActionType.ACTION_TYPE_MERCHENT_PRODUCT:
                                  Get.toNamed(Routes.GUIDE_DETAIL_SCREEN,
                                      arguments: {
                                        ArgumentConstant.ActionType: actionType,
                                        ArgumentConstant.ModuleType:
                                            ModuleConstant
                                                .MODULE_TYPE_MERCHENT_PRODUCT
                                      });

                                  break;
                                case ActionType
                                    .ACTION_TYPE_SUBMIT_YOUR_BUISSNESS:
                                  Get.toNamed(Routes.GUIDE_DETAIL_SCREEN,
                                      arguments: {
                                        ArgumentConstant.ActionType: actionType,
                                        ArgumentConstant.ModuleType: ModuleConstant
                                            .MODULE_TYPE_SUBMIT_YOUR_BUISSNESST
                                      });

                                  break;
                                case ActionType.ACTION_TYPE_CHOOSE_YOUR_WALLET:
                                  Get.toNamed(Routes.WALLET_SCREEN);

                                  break;
                                default:
                                  break;
                              }
                            },
                            child: Container(
                              height: MySize.size38,
                              padding: EdgeInsets.symmetric(
                                  horizontal: MySize.getScaledSizeWidth(15)),
                              decoration: BoxDecoration(
                                color: appTheme.primaryTheme,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  buttonName!,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: MySize.size16),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

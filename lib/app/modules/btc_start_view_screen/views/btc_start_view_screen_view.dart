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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MySize.size15,
                        ),
                        Text(
                          "How to use BTC",
                          style: TextStyle(
                              color: appTheme.primaryTheme,
                              fontWeight: FontWeight.w600,
                              fontSize: MySize.size18),
                        ),
                        SizedBox(
                          height: MySize.size15,
                        ),
                        getWidget(
                          no: "1",
                          buttonName: "Read More",
                          isButton: true,
                          actionType: ActionType.ACTION_TYPE_INFORM_YOUR_SELF,
                          title: "Inform yourself",
                          data:
                              "BTC is different than what you know and use every day. Before you start using BTC, there are a few things that you need to know in order to use it securely and avoid common pitfalls.",
                        ),
                        getBannerAd(),
                        SizedBox(
                          height: MySize.size15,
                        ),
                        getWidget(
                          no: "2",
                          buttonName: "Choose your Wallet",
                          isButton: true,
                          actionType: ActionType.ACTION_TYPE_CHOOSE_YOUR_WALLET,
                          title: "Choose your wallet",
                          data:
                              "Free BTC wallets are available for all major operating systems and devices to serve a variety of your needs. For example, you can install an app on your mobile device for everyday use or you can have a wallet only for online payments on your computer. In any case, choosing a wallet is easy and can be done in minutes.",
                        ),
                        SizedBox(
                          height: MySize.size15,
                        ),
                        getWidget(
                            no: "3",
                            buttonName: "Get BTC",
                            isButton: false,
                            title: "Choose your wallet",
                            data:
                                "You can get BTC by accepting it as a payment for goods and services. There are also several ways you can buy BTC."),
                        SizedBox(
                          height: MySize.size15,
                        ),
                        getBannerAd(),
                        getWidget(
                            no: "4",
                            buttonName: "Spend BTC",
                            isButton: true,
                            actionType: ActionType.ACTION_TYPE_MERCHENT_PRODUCT,
                            title: "Find Merchants and Product",
                            data:
                                "There are a growing number of services and merchants accepting BTC all over the world. Use BTC to pay them and rate your experience to help them gain more visibility."),
                        SizedBox(
                          height: MySize.size20,
                        ),
                        Text(
                          "How to accept BTC",
                          style: TextStyle(
                              color: appTheme.primaryTheme,
                              fontWeight: FontWeight.w600,
                              fontSize: MySize.size18),
                        ),
                        SizedBox(
                          height: MySize.size15,
                        ),
                        getWidget(
                          no: "1",
                          buttonName: "Read More",
                          actionType: ActionType.ACTION_TYPE_INFORM_YOUR_SELF,
                          isButton: true,
                          data:
                              "BTC does not require merchants to change their habits. However, BTC is different than what you know and use every day. Before you start using BTC, there are a few things that you need to know in order to use it securely and avoid common pitfalls.",
                          title: "Inform yourself",
                        ),
                        getBannerAd(),
                        SizedBox(
                          height: MySize.size15,
                        ),
                        getWidget(
                          no: "2",
                          buttonName: "Find merchant services",
                          isButton: true,
                          actionType: ActionType.ACTION_TYPE_MERCHENT_SERVICE,
                          data:
                              "You can process payments and invoices by yourself or you can use merchant services and deposit money in your local currency or BTCs. Most point of sales businesses use a tablet or a mobile phone to let customers pay with their mobile phones.",
                          title: "Processing payments",
                        ),
                        SizedBox(
                          height: MySize.size15,
                        ),
                        getWidget(
                            no: "3",
                            buttonName: "Read More",
                            isButton: true,
                            actionType: ActionType.ACTION_TYPE_ACCOUNT_TAXES,
                            title: "Accounting and taxes",
                            data:
                                "Merchants often deposit and display prices in their local currency. In other cases, BTC works similarly to a foreign currency. To get appropriate guidance regarding tax compliance for your own jurisdiction, you should contact a qualified accountant."),
                        SizedBox(
                          height: MySize.size15,
                        ),
                        getWidget(
                            no: "4",
                            buttonName: "Submit Your business",
                            isButton: true,
                            actionType:
                                ActionType.ACTION_TYPE_SUBMIT_YOUR_BUISSNESS,
                            title: "Gaining visibility",
                            data:
                                "There is a growing number of users searching for ways to spend their BTCs. You can submit your business in online directories to help them easily find you. You can also display the BTC logo on your website or your brick and mortar business."),
                        SizedBox(
                          height: MySize.size20,
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

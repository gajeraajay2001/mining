import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/moduleConstant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/widget_utils.dart';

import '../controllers/wallet_screen_controller.dart';

class WalletScreenView extends GetWidget<WalletScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MySize.safeHeight,
        width: MySize.safeWidth,
        child: Column(
          children: [
            getAppBar(ModuleConstant.MODULE_TYPE_CHOOSE_YOUR_WALLET),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MySize.getScaledSizeWidth(18),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MySize.size15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: MySize.size38,
                            width: MySize.size38,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(MySize.size100!),
                              border: Border.all(
                                  width: 3, color: appTheme.whiteColor),
                            ),
                            child: Center(
                              child: Text(
                                "1",
                                style: TextStyle(fontSize: MySize.size18),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MySize.getScaledSizeWidth(15),
                          ),
                          Text(
                            "What's your operating system?",
                            style: TextStyle(
                                color: appTheme.whiteColor,
                                fontSize: MySize.size18,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      Text(
                        "Mobile wallets",
                        style: TextStyle(
                            color: appTheme.primaryTheme,
                            fontWeight: FontWeight.w400,
                            fontSize: MySize.size16),
                      ),
                      SizedBox(
                        height: MySize.size10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          getImageView("assets/android.png"),
                          SizedBox(
                            width: MySize.getScaledSizeWidth(15),
                          ),
                          getImageView("assets/apple.png"),
                        ],
                      ),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data:
                              "Portable and convenient; ideal when making transactions face-to-face",
                          no: "+"),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data:
                              "Designed to use QR codes to make quick and seamless transactions",
                          no: "+"),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data:
                              "App marketplaces can delist/remove wallet making it difficult to receive future updates",
                          no: "-"),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data:
                              "Damage or loss of device can potentially lead to loss of funds",
                          no: "-"),
                      SizedBox(
                        height: MySize.size25,
                      ),
                      Text(
                        "Mobile wallets",
                        style: TextStyle(
                            color: appTheme.primaryTheme,
                            fontWeight: FontWeight.w400,
                            fontSize: MySize.size16),
                      ),
                      SizedBox(
                        height: MySize.size10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          getImageView("assets/linux.png"),
                          SizedBox(
                            width: MySize.getScaledSizeWidth(15),
                          ),
                          getImageView("assets/apple.png"),
                          SizedBox(
                            width: MySize.getScaledSizeWidth(15),
                          ),
                          getImageView("assets/windows.png"),
                        ],
                      ),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data:
                              "Environment enables users to have complete control over funds",
                          no: "+"),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data:
                              "Some desktop wallets offer hardware wallet support, or can operate as full nodes",
                          no: "+"),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data:
                              "Difficult to utilize QR codes when making transactions",
                          no: "-"),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data:
                              "Susceptible to BTC-stealing malware/spyware/ viruses",
                          no: "-"),
                      SizedBox(
                        height: MySize.size25,
                      ),
                      SizedBox(
                        height: MySize.size25,
                      ),
                      Text(
                        "Mobile wallets",
                        style: TextStyle(
                            color: appTheme.primaryTheme,
                            fontWeight: FontWeight.w400,
                            fontSize: MySize.size16),
                      ),
                      SizedBox(
                        height: MySize.size10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          getImageView("assets/lock.png"),
                        ],
                      ),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data: "One of the most secure methods to store funds",
                          no: "+"),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data: "Ideal for storing large amounts of BTC",
                          no: "+"),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data:
                              "Difficult to use while mobile; not designed for scanning QR codes",
                          no: "-"),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      getSubRow(
                          data:
                              "Loss of device without proper backup can make funds unrecoverable",
                          no: "-"),
                      SizedBox(
                        height: MySize.size25,
                      ),
                      getMainRow(
                          no: "2", data: "How much do you know about BTC?"),
                      SizedBox(
                        height: MySize.size10,
                      ),
                      getMainRow(
                          no: "3",
                          data:
                              "Which criteria are important to you?Which criteria are important to you?(Optional)"),
                      SizedBox(
                        height: MySize.size10,
                      ),
                      getMainRow(
                          no: "4",
                          data:
                              "What features are you looking for? (Optional)"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Container getImageView(String? img) {
    return Container(
      height: MySize.size80,
      child: Center(
        child: Image(
          image: AssetImage(
            img!,
          ),
          height: MySize.size80,
          color: appTheme.whiteColor,
        ),
      ),
    );
  }

  Row getMainRow({String? no, String? data}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
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
          width: MySize.getScaledSizeWidth(15),
        ),
        Expanded(
          child: Text(
            data!,
            softWrap: true,
            style: TextStyle(
                color: appTheme.whiteColor,
                fontSize: MySize.size16,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }

  Row getSubRow({String? data, String? no}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: MySize.size22,
          width: MySize.size22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MySize.size100!),
            border: Border.all(width: 2, color: appTheme.whiteColor),
          ),
          child: Center(
            child: Text(
              no!,
              style: TextStyle(fontSize: MySize.size14),
            ),
          ),
        ),
        SizedBox(
          width: MySize.getScaledSizeWidth(15),
        ),
        Expanded(
          child: Text(
            data!,
            softWrap: true,
            style: TextStyle(
                color: appTheme.whiteColor,
                fontSize: MySize.size16,
                fontWeight: FontWeight.normal),
          ),
        )
      ],
    );
  }
}

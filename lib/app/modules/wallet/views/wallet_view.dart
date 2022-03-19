import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/moduleConstant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/submit_button.dart';
import 'package:mining/utilities/widget_utils.dart';

import '../controllers/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
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
              getAppBar(ModuleConstant.MODULE_TYPE_WALLET),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: MySize.size20),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: MySize.size25!),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Detail",
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    left: MySize.size10!,
                                    bottom: MySize.size6!,
                                    right: MySize.size6!,
                                    top: MySize.size6!),
                                child: Image.asset("assets/wallet.png",
                                    color: Colors.white, width: MySize.size30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: appTheme.primaryTheme,
                                    width: MySize.size2!),
                                borderRadius:
                                    BorderRadius.circular(MySize.size20!),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: appTheme.primaryTheme,
                                    width: MySize.size2!),
                                borderRadius:
                                    BorderRadius.circular(MySize.size20!),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: appTheme.primaryTheme,
                                    width: MySize.size2!),
                                borderRadius:
                                    BorderRadius.circular(MySize.size20!),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: appTheme.primaryTheme,
                                    width: MySize.size2!),
                                borderRadius:
                                    BorderRadius.circular(MySize.size20!),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: MySize.size20),
                        Center(
                          child: Text(
                            "Enter Your wallet details.",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(
                              color: appTheme.textGrayColor,
                              fontSize: MySize.size18,
                            ),
                          ),
                        ),
                        SizedBox(height: MySize.size10),
                        button(
                            title: "Accept",
                            borderRadius: MySize.size20,
                            textSize: MySize.size18,
                            width: MySize.getScaledSizeWidth(270)),
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
}

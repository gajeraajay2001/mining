import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/moduleConstant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/submit_button.dart';

import '../../../../utilities/widget_utils.dart';
import '../controllers/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
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
              getAppBar(ModuleConstant.MODULE_TYPE_TRANSACTION),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: MySize.size20),
                        Text(
                          "You Have 0.005500BTC",
                          style: TextStyle(
                              color: appTheme.primaryTheme,
                              fontSize: MySize.size23,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: MySize.size10),
                        Center(
                          child: Text(
                            "You have a required Minimum 10000 BTC for 10 withdraw",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(
                              color: appTheme.textGrayColor,
                              fontSize: MySize.size16,
                            ),
                          ),
                        ),
                        SizedBox(height: MySize.size10),
                        button(
                            title: "Withdraw",
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

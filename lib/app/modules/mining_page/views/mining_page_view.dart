import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/mining_page_controller.dart';

class MiningPageView extends GetWidget<MiningPageController> {
  @override
  Widget build(BuildContext context) {
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [],
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

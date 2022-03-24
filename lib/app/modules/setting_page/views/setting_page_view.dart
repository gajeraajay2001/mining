import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/moduleConstant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/widget_utils.dart';

import '../controllers/setting_page_controller.dart';

class SettingPageView extends GetWidget<SettingPageController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingPageController>(
        init: SettingPageController(),
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                height: MySize.safeHeight,
                width: MySize.safeWidth,
                child: Column(
                  children: [
                    getAppBar(ModuleConstant.MODULE_TYPE_SETTING,
                        isBack: false),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: MySize.getScaledSizeWidth(15),
                            vertical: MySize.getScaledSizeHeight(15)),
                        child: ListView.separated(
                            itemBuilder: (context, i) {
                              return GestureDetector(
                                onTap: () {
                                  controller
                                      .onClickButton(controller.list![i].type!);
                                },
                                child: Container(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: MySize.size40,
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                MySize.getScaledSizeWidth(10)),
                                        decoration: BoxDecoration(
                                            color: appTheme.secondaryColor,
                                            borderRadius: BorderRadius.circular(
                                                MySize.size12!),
                                            border: Border.all(
                                                color: appTheme.primaryTheme,
                                                width: MySize.size2!)),
                                        child: Container(
                                          height: MySize.size20,
                                          width: MySize.size20,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                controller.list![i].img
                                                    .toString(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: MySize.getScaledSizeWidth(20),
                                      ),
                                      Text(
                                        controller.list![i].name.toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: MySize.size18,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, i) {
                              return (i % 2 == 0)
                                  ? Padding(
                                      padding:
                                          EdgeInsets.only(top: MySize.size15!),
                                      child: getBannerAd(),
                                    )
                                  : SizedBox(
                                      height: MySize.size15,
                                    );
                            },
                            itemCount: controller.list!.length),
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

class ButtonModel {
  int? type;
  String? name;
  String? img;
  ButtonModel({this.type, this.img, this.name});
}

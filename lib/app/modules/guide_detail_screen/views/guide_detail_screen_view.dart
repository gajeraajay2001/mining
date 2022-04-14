import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/moduleConstant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/widget_utils.dart';

import '../controllers/guide_detail_screen_controller.dart';

class GuideDetailScreenView extends GetWidget<GuideDetailScreenController> {
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
              getAppBar(controller.moduleType),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                      left: MySize.getScaledSizeWidth(15),
                      right: MySize.getScaledSizeWidth(15)),
                  child: ListView.separated(
                      itemBuilder: (context, i) {
                        return Container(
                          width: double.infinity,
                          // height: MySize.size150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              (controller.detailList![i].isImg!)
                                  ? SizedBox(
                                      height: MySize.size15,
                                    )
                                  : SizedBox(),
                              (controller.detailList![i].isImg!)
                                  ? Container(
                                      height: MySize.size80,
                                      width: double.infinity,
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(
                                            controller.detailList![i].ImgData
                                                .toString(),
                                          ),
                                          height: MySize.size80,
                                          color: appTheme.whiteColor,
                                        ),
                                      ),
                                    )
                                  : SizedBox(),
                              SizedBox(
                                height: MySize.size15,
                              ),
                              Text(
                                controller.detailList![i].title.toString(),
                                style: (controller.detailList![i].type ==
                                        DetailDataModelConstant.MAGATITLE)
                                    ? TextStyle(
                                        color: appTheme.primaryTheme,
                                        fontWeight: FontWeight.w600,
                                        fontSize: MySize.size16)
                                    : TextStyle(
                                        color: appTheme.whiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: MySize.size20),
                              ),
                              SizedBox(
                                height: MySize.size15,
                              ),
                              Text(
                                controller.detailList![i].data.toString(),
                                style: TextStyle(
                                    color: appTheme.whiteColor,
                                    fontWeight: FontWeight.w500,
                                    height: 1.3,
                                    fontSize: MySize.size14),
                              ),
                              SizedBox(
                                height: MySize.size15,
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, i) {
                        return (i % 3 == 0)
                            ? Padding(
                                padding: EdgeInsets.only(top: MySize.size20!),
                                child: (i % 2 == 0)
                                    ? facebookNativeAd()
                                    : getBannerAd(),
                              )
                            : SizedBox(
                                height: MySize.size20,
                              );
                      },
                      itemCount: controller.detailList!.length),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

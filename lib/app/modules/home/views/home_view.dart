import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining/app/modules/bitcoin_guide_page/views/bitcoin_guide_page_view.dart';
import 'package:mining/app/modules/mining_page/views/mining_page_view.dart';
import 'package:mining/app/modules/setting_page/views/setting_page_view.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/sizeConstant.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Obx(() {
      return Scaffold(
        // appBar: AppBar(
        //   title: Text('BTC mining'),
        //   centerTitle: true,
        // ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(MySize.getScaledSizeHeight(5)),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage("assets/settings.png"),
                    height: MySize.getScaledSizeHeight(22),
                    color: (controller.bottomIndex.value == 0)
                        ? appTheme.primaryTheme
                        : appTheme.whiteColor,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage("assets/bitcoin.png"),
                    height: MySize.getScaledSizeHeight(22),
                    color: (controller.bottomIndex.value == 1)
                        ? appTheme.primaryTheme
                        : appTheme.whiteColor,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SizedBox(height: MySize.getScaledSizeHeight(5)),
                      Image(
                        image: AssetImage("assets/settings.png"),
                        height: MySize.getScaledSizeHeight(22),
                        color: (controller.bottomIndex.value == 2)
                            ? appTheme.primaryTheme
                            : appTheme.whiteColor,
                      ),
                    ],
                  ),
                  label: ""),
            ],
            onTap: (index) {
              controller.bottomIndex.value = index;
              controller.pageController.jumpToPage(index);
              controller.bottomIndex.refresh();
            },
            type: BottomNavigationBarType.fixed,
            // fixedColor: (controller.bottomIndex.value == 0)
            //     ? appTheme.primaryTheme
            //     : Colors.black54,
            currentIndex: controller.bottomIndex.value,
            selectedItemColor: appTheme.primaryTheme,
          ),
        ),
        body: PageView(
          controller: controller.pageController,
          children: [
            MiningPageView(),
            BitcoinGuidePageView(),
            SettingPageView(),

            // Container(),
          ],
          onPageChanged: (index) {
            controller.bottomIndex.value = index;
            controller.bottomIndex.refresh();
          },
        ),
      );
    });
  }
}

import 'dart:async';

import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxInt bottomIndex = 0.obs;
  Timer? timer;
  PageController pageController = PageController();
  RxBool isActive100 = true.obs;
  RxBool isActive75 = false.obs;
  RxBool isActive50 = false.obs;
  RxBool isActive25 = false.obs;
  RxBool isPlay = false.obs;
  RxBool isTimerCompleted = false.obs;
  RxInt time100 = 10799.obs;
  RxInt time75 = 14399.obs;
  RxInt time50 = 21599.obs;
  RxInt time25 = 28799.obs;
  RxInt totalSeconds = 0.obs;
  RxInt startSeconds = 0.obs;
  RxDouble totalAmt = 0.000000.obs;
  final count = 0.obs;
  SharedPreferences? pref;
  @override
  void onInit() async {
    FacebookAudienceNetwork.init(
      testingId: "37b1da9d-b48c-4103-a393-2e095e734bd6",
    );
    FacebookInterstitialAd.loadInterstitialAd(
      placementId: "IMG_16_9_LINK#YOUR_PLACEMENT_ID",
      listener: (result, value) {
        if (result == InterstitialAdResult.LOADED)
          FacebookInterstitialAd.showInterstitialAd(delay: 1000);
      },
    );
    super.onInit();
    pref = await SharedPreferences.getInstance();
    totalAmt.value = pref!.getDouble("amt")!;
  }

  void startTimer(int sec) {
    totalSeconds.value = sec;
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(oneSec, (timer) {
      if (startSeconds.value == 5) {
        startSeconds.value = 0;
        totalAmt.value = totalAmt.value + 0.000001;
        pref!.setDouble("amt", totalAmt.value);
      }
      if (totalSeconds.value < 1) {
        timer.cancel();
        isTimerCompleted.value = true;
      } else {
        totalSeconds.value = totalSeconds.value - 1;
        startSeconds.value = startSeconds.value + 1;
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    if (timer != null) {
      timer!.cancel();
    }
  }

  void increment() => count.value++;
}

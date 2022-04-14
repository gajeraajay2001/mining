import 'package:facebook_audience_network/ad/ad_interstitial.dart';
import 'package:get/get.dart';
import 'package:mining/app/modules/home/controllers/home_controller.dart';

import '../../../../utilities/widget_utils.dart';

class MiningPageController extends GetxController {
  //TODO: Implement MiningPageController
  Rx<HomeController> homeController = Get.put(HomeController()).obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    interstialAd();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

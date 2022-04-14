import 'package:get/get.dart';

import '../../../../utilities/widget_utils.dart';

class BtcStartViewScreenController extends GetxController {
  //TODO: Implement BtcStartViewScreenController

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

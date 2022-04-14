import 'package:get/get.dart';

import '../../../../utilities/widget_utils.dart';

class PrivacyController extends GetxController {
  //TODO: Implement PrivacyController

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

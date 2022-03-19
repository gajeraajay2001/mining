import 'package:get/get.dart';

import '../controllers/btc_start_view_screen_controller.dart';

class BtcStartViewScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BtcStartViewScreenController>(
      () => BtcStartViewScreenController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/btc_full_mode_controller.dart';

class BtcFullModeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BtcFullModeController>(
      () => BtcFullModeController(),
    );
  }
}

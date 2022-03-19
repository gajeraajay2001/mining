import 'package:get/get.dart';

import '../controllers/mining_page_controller.dart';

class MiningPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MiningPageController>(
      () => MiningPageController(),
    );
  }
}

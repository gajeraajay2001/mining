import 'package:get/get.dart';

import '../controllers/bitcoin_guide_page_controller.dart';

class BitcoinGuidePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BitcoinGuidePageController>(
      () => BitcoinGuidePageController(),
    );
  }
}

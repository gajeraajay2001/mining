import 'package:get/get.dart';

import '../controllers/refer_page_controller.dart';

class ReferPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReferPageController>(
      () => ReferPageController(),
    );
  }
}

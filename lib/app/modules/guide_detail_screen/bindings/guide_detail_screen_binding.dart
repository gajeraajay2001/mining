import 'package:get/get.dart';

import '../controllers/guide_detail_screen_controller.dart';

class GuideDetailScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuideDetailScreenController>(
      () => GuideDetailScreenController(),
    );
  }
}

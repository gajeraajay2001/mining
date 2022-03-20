import 'package:get/get.dart';
import 'package:mining/app/modules/home/controllers/home_controller.dart';

class MiningPageController extends GetxController {
  //TODO: Implement MiningPageController
  Rx<HomeController> homeController = Get.put(HomeController()).obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

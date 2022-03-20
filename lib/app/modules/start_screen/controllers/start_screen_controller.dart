import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartScreenController extends GetxController {
  //TODO: Implement StartScreenController
  final count = 0.obs;
  SharedPreferences? pref;

  @override
  void onInit() async {
    super.onInit();
    pref = await SharedPreferences.getInstance();
    if (pref!.getDouble("amt") == null) {
      pref!.setDouble("amt", 0.000000);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

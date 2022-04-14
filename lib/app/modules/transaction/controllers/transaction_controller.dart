import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../utilities/widget_utils.dart';

class TransactionController extends GetxController {
  //TODO: Implement TransactionController

  final count = 0.obs;
  RxDouble totalAmt = 0.000000.obs;
  SharedPreferences? pref;

  @override
  void onInit() async {
    pref = await SharedPreferences.getInstance();
    totalAmt.value = pref!.getDouble("amt")!;
    interstialAd();

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

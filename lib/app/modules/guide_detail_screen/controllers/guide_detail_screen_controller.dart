import 'package:mining/Model/widgetModel.dart';
import 'package:mining/constants/moduleConstant.dart';
import 'package:get/get.dart';

class GuideDetailScreenController extends GetxController {
  //TODO: Implement GuideDetailScreenController
  int moduleType = Get.arguments[ArgumentConstant.ModuleType];
  int actionType = Get.arguments[ArgumentConstant.ActionType];
  final count = 0.obs;
  List<DetailDataModel>? detailList;
  @override
  void onInit() {
    detailList = getDetailData(moduleType);
    super.onInit();
    print(moduleType.toString());
    print(actionType.toString());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

import 'package:get/get.dart';
import 'package:mining/Model/widgetModel.dart';
import 'package:mining/app/routes/app_pages.dart';
import 'package:mining/constants/moduleConstant.dart';

class BitcoinGuidePageController extends GetxController {
  //TODO: Implement BitcoinGuidePageController
  List<BonusGuide> allData = getListofBonus();
  final count = 0.obs;
  @override
  void onInit() {
    print(allData);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    print(allData);
  }

  openDataScreen(BonusGuide g) {
    switch (g.ActionType) {
      case ActionType.ACTION_TYPE_BYC_INDIVIDUAL:
      case ActionType.ACTION_TYPE_BTC_WORK:
      case ActionType.ACTION_TYPE_SUPPORT_BTC:
      case ActionType.ACTION_TYPE_BTC_MINING:
      case ActionType.ACTION_TYPE_BTC_TERMS:
      case ActionType.ACTION_TYPE_POOL_MINING:
      case ActionType.ACTION_TYPE_SPEND_BTC:
      case ActionType.ACTION_TYPE_BTC_BONUS:
        Get.toNamed(Routes.GUIDE_DETAIL_SCREEN, arguments: {
          ArgumentConstant.ActionType: g.ActionType,
          ArgumentConstant.ModuleType: g.moduleType
        });
        break;
      case ActionType.ACTION_TYPE_BTC_START:
        Get.toNamed(Routes.BTC_START_VIEW_SCREEN);
        break;
      case ActionType.ACTION_TYPE_BTC_FULL_MODE:
        Get.toNamed(Routes.BTC_FULL_MODE);
        break;
      default:
        break;
    }
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

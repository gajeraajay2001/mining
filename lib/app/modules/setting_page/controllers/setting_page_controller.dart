import 'package:get/get.dart';
import 'package:mining/app/modules/setting_page/views/setting_page_view.dart';
import 'package:mining/app/routes/app_pages.dart';
import 'package:mining/constants/moduleConstant.dart';

class SettingPageController extends GetxController {
  //TODO: Implement SettingPageController
  List<ButtonModel>? list;
  final count = 0.obs;
  @override
  void onInit() {
    list = getList();
    super.onInit();
  }

  List<ButtonModel> getList() {
    List<ButtonModel> listD = [];
    listD.add(ButtonModel(
        type: ActionType.ACTION_TYPE_PRIVACY,
        name: "Privacy",
        img: "assets/lock.png"));
    listD.add(ButtonModel(
        type: ActionType.ACTION_TYPE_RATE_US,
        name: "Rate Us",
        img: "assets/star.png"));
    listD.add(ButtonModel(
        type: ActionType.ACTION_TYPE_TRANSACTION,
        name: "Transaction",
        img: "assets/history.png"));
    listD.add(ButtonModel(
        type: ActionType.ACTION_TYPE_WALLET,
        name: "Wallet",
        img: "assets/wallet.png"));
    listD.add(ButtonModel(
        type: ActionType.ACTION_TYPE_EARN_REFER,
        name: "Refer & Earn",
        img: "assets/earn.png"));
    return listD;
  }

  onClickButton(int actionType) {
    switch (actionType) {
      case ActionType.ACTION_TYPE_PRIVACY:
        Get.toNamed(Routes.PRIVACY);
        break;
      case ActionType.ACTION_TYPE_EARN_REFER:
        Get.toNamed(Routes.REFER_PAGE);
        break;
      default:
        break;
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

import 'package:get/get.dart';
import 'package:mining/app/modules/setting_page/views/setting_page_view.dart';
import 'package:mining/app/routes/app_pages.dart';
import 'package:mining/constants/moduleConstant.dart';

class SettingPageController extends GetxController {
  List<ButtonModel>? list;
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
        break;
      case ActionType.ACTION_TYPE_TRANSACTION:
        Get.toNamed(Routes.TRANSACTION);
        break;
      case ActionType.ACTION_TYPE_WALLET:
        Get.toNamed(Routes.WALLET);
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
}

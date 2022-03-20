import 'package:get/get.dart';

import 'package:mining/app/modules/bitcoin_guide_page/bindings/bitcoin_guide_page_binding.dart';
import 'package:mining/app/modules/bitcoin_guide_page/views/bitcoin_guide_page_view.dart';
import 'package:mining/app/modules/btc_full_mode/bindings/btc_full_mode_binding.dart';
import 'package:mining/app/modules/btc_full_mode/views/btc_full_mode_view.dart';
import 'package:mining/app/modules/btc_start_view_screen/bindings/btc_start_view_screen_binding.dart';
import 'package:mining/app/modules/btc_start_view_screen/views/btc_start_view_screen_view.dart';
import 'package:mining/app/modules/guide_detail_screen/bindings/guide_detail_screen_binding.dart';
import 'package:mining/app/modules/guide_detail_screen/views/guide_detail_screen_view.dart';
import 'package:mining/app/modules/home/bindings/home_binding.dart';
import 'package:mining/app/modules/home/views/home_view.dart';
import 'package:mining/app/modules/mining_page/bindings/mining_page_binding.dart';
import 'package:mining/app/modules/mining_page/views/mining_page_view.dart';
import 'package:mining/app/modules/privacy/bindings/privacy_binding.dart';
import 'package:mining/app/modules/privacy/views/privacy_view.dart';
import 'package:mining/app/modules/refer_page/bindings/refer_page_binding.dart';
import 'package:mining/app/modules/refer_page/views/refer_page_view.dart';
import 'package:mining/app/modules/setting_page/bindings/setting_page_binding.dart';
import 'package:mining/app/modules/setting_page/views/setting_page_view.dart';
import 'package:mining/app/modules/start_screen/bindings/start_screen_binding.dart';
import 'package:mining/app/modules/start_screen/views/start_screen_view.dart';
import 'package:mining/app/modules/transaction/bindings/transaction_binding.dart';
import 'package:mining/app/modules/transaction/views/transaction_view.dart';
import 'package:mining/app/modules/wallet/bindings/wallet_binding.dart';
import 'package:mining/app/modules/wallet/views/wallet_view.dart';
import 'package:mining/app/modules/wallet_screen/bindings/wallet_screen_binding.dart';
import 'package:mining/app/modules/wallet_screen/views/wallet_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.START_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MINING_PAGE,
      page: () => MiningPageView(),
      binding: MiningPageBinding(),
    ),
    GetPage(
      name: _Paths.BITCOIN_GUIDE_PAGE,
      page: () => BitcoinGuidePageView(),
      binding: BitcoinGuidePageBinding(),
    ),
    GetPage(
      name: _Paths.SETTING_PAGE,
      page: () => SettingPageView(),
      binding: SettingPageBinding(),
    ),
    GetPage(
      name: _Paths.GUIDE_DETAIL_SCREEN,
      page: () => GuideDetailScreenView(),
      binding: GuideDetailScreenBinding(),
    ),
    GetPage(
      name: _Paths.BTC_START_VIEW_SCREEN,
      page: () => BtcStartViewScreenView(),
      binding: BtcStartViewScreenBinding(),
    ),
    GetPage(
      name: _Paths.WALLET_SCREEN,
      page: () => WalletScreenView(),
      binding: WalletScreenBinding(),
    ),
    GetPage(
      name: _Paths.PRIVACY,
      page: () => PrivacyView(),
      binding: PrivacyBinding(),
    ),
    GetPage(
      name: _Paths.REFER_PAGE,
      page: () => ReferPageView(),
      binding: ReferPageBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION,
      page: () => TransactionView(),
      binding: TransactionBinding(),
    ),
    GetPage(
      name: _Paths.WALLET,
      page: () => WalletView(),
      binding: WalletBinding(),
    ),
    GetPage(
      name: _Paths.START_SCREEN,
      page: () => StartScreenView(),
      binding: StartScreenBinding(),
    ),
    GetPage(
      name: _Paths.BTC_FULL_MODE,
      page: () => BtcFullModeView(),
      binding: BtcFullModeBinding(),
    ),
  ];
}

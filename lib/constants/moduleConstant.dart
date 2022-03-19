class ModuleConstant {
  static const MODULE_TYPE_BANNER = 0;
  static const MODULE_TYPE_BYC_INDIVIDUAL = 1;
  static const MODULE_TYPE_BTC_START = 2;
  static const MODULE_TYPE_BTC_WORK = 3;
  static const MODULE_TYPE_SUPPORT_BTC = 4;
  static const MODULE_TYPE_BTC_FULL_MODE = 5;
  static const MODULE_TYPE_BTC_MINING = 6;
  static const MODULE_TYPE_BTC_TERMS = 7;
  static const MODULE_TYPE_BTC_BONUS = 8;
  static const MODULE_TYPE_POOL_MINING = 9;
  static const MODULE_TYPE_SPEND_BTC = 10;
  static const MODULE_TYPE_INFORM_YOUR_SELF = 11;
  static const MODULE_TYPE_CHOOSE_YOUR_WALLET = 12;
  static const MODULE_TYPE_MERCHENT_PRODUCT = 13;
  static const MODULE_TYPE_SUBMIT_YOUR_BUISSNESST = 14;
  static const MODULE_TYPE_SETTING = 15;
  static const MODULE_TYPE_PRIVACY = 16;
  static const MODULE_TYPE_REFER = 18;
}

class ActionType {
  static const ACTION_TYPE_BANNER = 0;
  static const ACTION_TYPE_BYC_INDIVIDUAL = 1;
  static const ACTION_TYPE_BTC_START = 2;
  static const ACTION_TYPE_BTC_WORK = 3;
  static const ACTION_TYPE_SUPPORT_BTC = 4;
  static const ACTION_TYPE_BTC_FULL_MODE = 5;
  static const ACTION_TYPE_BTC_MINING = 6;
  static const ACTION_TYPE_BTC_TERMS = 7;
  static const ACTION_TYPE_BTC_BONUS = 8;
  static const ACTION_TYPE_POOL_MINING = 9;
  static const ACTION_TYPE_SPEND_BTC = 10;
  static const ACTION_TYPE_INFORM_YOUR_SELF = 11;
  static const ACTION_TYPE_CHOOSE_YOUR_WALLET = 12;
  static const ACTION_TYPE_MERCHENT_PRODUCT = 13;
  static const ACTION_TYPE_MERCHENT_SERVICE = 14;
  static const ACTION_TYPE_ACCOUNT_TAXES = 15;
  static const ACTION_TYPE_SUBMIT_YOUR_BUISSNESS = 16;
  static const ACTION_TYPE_SETTING = 17;
  static const ACTION_TYPE_PRIVACY = 18;
  static const ACTION_TYPE_RATE_US = 19;
  static const ACTION_TYPE_TRANSACTION = 20;
  static const ACTION_TYPE_WALLET = 21;
  static const ACTION_TYPE_EARN_REFER = 22;
}

class AdConstant {
  static const MODULE_TYPE_AD = 1;
  static const MODULE_TYPE_CONTANT = 2;
}

class ArgumentConstant {
  static const ModuleType = "moduleType";
  static const ActionType = "moduleType";
}

String getScreenTitle(int moduleType) {
  switch (moduleType) {
    case ModuleConstant.MODULE_TYPE_BYC_INDIVIDUAL:
      return "BTC for individuals";
    case ModuleConstant.MODULE_TYPE_BTC_WORK:
      return "How does BTC work?";
    case ModuleConstant.MODULE_TYPE_BTC_START:
      return "Getting started with BTC ";
    case ModuleConstant.MODULE_TYPE_CHOOSE_YOUR_WALLET:
      return "Choose Bitcoin";
    case ModuleConstant.MODULE_TYPE_INFORM_YOUR_SELF:
      return "More Information";
    case ModuleConstant.MODULE_TYPE_MERCHENT_PRODUCT:
    case ModuleConstant.MODULE_TYPE_SUBMIT_YOUR_BUISSNESST:
      return "Spending Bitcoin";
    case ModuleConstant.MODULE_TYPE_SETTING:
      return "Setting";
    case ModuleConstant.MODULE_TYPE_PRIVACY:
      return "Privacy Policy";
    case ModuleConstant.MODULE_TYPE_REFER:
      return "Refer & Earn";
    default:
      return "About";
  }
}

class DetailDataModelConstant {
  static const MAGATITLE = 1;
  static const TITLE = 2;
  static const DATA = 3;
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining/constants/moduleConstant.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/widget_utils.dart';

import '../controllers/privacy_controller.dart';

class PrivacyView extends GetView<PrivacyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MySize.safeHeight,
          width: MySize.safeWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getAppBar(ModuleConstant.MODULE_TYPE_PRIVACY),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MySize.getScaledSizeWidth(10),
                      vertical: MySize.size10!),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Privacy Policy built the BTC Mining app as a Free app. This SERVICE is provided by at no cost and is intended for use as is.1010This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.1010If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.1010The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at BTC Mining unless otherwise defined in this Privacy Policy.1010Information Collection and Use1010For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.1010The app does use third party services that may collect information used to identify you.1010Link to privacy policy of third party service providers used by the app1010Google Play Services1010AdMob1010Google Analytics for Firebase1010Firebase Crashlytics 1010Facebook1010Log Data10101 want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol ('IP') address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.1010Cookies1010Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.1010This Service does not use these 'cookies' explicitly. However, the app may use third party code and libraries that use 'cookies' to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.1010Service Providers10101 may employ third-party companies and individuals due to the following reasons:1010To facilitate our Service;1010To provide the Service on our behalf, 1010To perform Service-related services; or1010To assist us in analyzing how our Service is used.10101 want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.1010Security10101 value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.1010Links to Other Sites1010This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.1010Children's Privacy1010These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13 years of age. Inthe case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.1010Changes to This Privacy Policy10101 may update our Privacy  Policy from time to time. Thus, you are advised to  review this page periodically for any changes. I  will notify you of any changes by posting the new  Privacy Policy on this page.1010This policy is effective as of 2021-10-301010Contact Us1010if you have any  questions or suggestions about my Privacy Policy, do not hesitate to contact me at BTCmining@info.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: MySize.size14,
                              height: 1.3),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

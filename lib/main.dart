import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  FacebookAudienceNetwork.init(
      iOSAdvertiserTrackingEnabled: true //default false
      );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Color(0xff505050),

        brightness: Brightness.dark,
        // /primaryColor: appTheme.primaryTheme,
        accentColor: Color(0xff505050),

        // splashColor: Colors.transparent,
        // highlightColor: Colors.transparent,
        // canvasColor: appTheme.canvasColor,
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

import 'package:dio/dio.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart' hide Response;
import 'package:shared_preferences/shared_preferences.dart';

Future loginApiCall({
  required String uname,
  required String password,
  required BuildContext context,
}) async {
  SharedPreferences pref = await SharedPreferences.getInstance();

  Dio dio = new Dio();
  dio.options.headers["Content-Type"] = "application/json";
  Map<String, dynamic> dict = {};
  dict["email"] = uname.toString().trim();
  dict["password"] = password.toString().trim();
  Response response;
  try {
    response = await dio
        .post('https://btc-mining-backend.herokuapp.com/users/login',
            data: dict)
        .catchError((e) => print(e));
    print(response);
    if (response.statusCode == 200) {
      return response;
    }
    if (response.statusCode == 400) {
      Get.snackbar("Error", "User Not Found");
      return response;
    } else {
      Get.snackbar("Error", response.data);
    }
  } catch (e) {
    Get.snackbar("Error", "User Not Found");
  }
}

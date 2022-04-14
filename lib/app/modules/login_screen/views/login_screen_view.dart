import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mining/constants/sizeConstant.dart';
import 'package:mining/utilities/submit_button.dart';
import 'package:mining/utilities/text_field.dart';

import '../../../../log_in_network.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetWidget<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text('LogIn'),
          centerTitle: true,
        ),
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus!.unfocus();
          },
          child: Container(
            height: MySize.screenHeight,
            width: MySize.screenHeight,
            padding: EdgeInsets.symmetric(
                horizontal: MySize.getScaledSizeWidth(23),
                vertical: MySize.getScaledSizeHeight(20)),
            child: SingleChildScrollView(
              child: Form(
                key: controller.formKey.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MySize.size200,
                    ),
                    // Text("")
                    getTextField(
                      hintText: "Enter Email Id",
                      textEditingController: controller.emailController.value,
                      validation: (input) {
                        if (input!.isEmpty || input.length == 0) {
                          return "Please Enter Email id";
                        } else if (input.isValidEmail()) {
                          return null;
                        } else
                          return "Check your email";
                      },
                    ),
                    SizedBox(
                      height: MySize.size50,
                    ),
                    getTextField(
                      hintText: "Enter Password",
                      textEditingController:
                          controller.passwordController.value,
                      validation: (input) {
                        if (input!.isEmpty || input.length == 0) {
                          return "Please Enter Password";
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: MySize.size50,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          if (controller.formKey.value.currentState!
                              .validate()) {
                            loginApiCall(
                              context: context,
                              password:
                                  controller.passwordController.value.text,
                              uname: controller.emailController.value.text,
                            ).then((value) {}).catchError((e) {
                              print(e);
                            });
                          }
                        },
                        child: button(
                            width: MySize.getScaledSizeWidth(250),
                            title: "Log In",
                            textColor: Colors.white,
                            textSize: MySize.size20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

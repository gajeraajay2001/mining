import 'package:flutter/material.dart';
import 'package:mining/constants/sizeConstant.dart';

TextFormField getTextField({
  String? hintText,
  TextEditingController? textEditingController,
  Widget? prefixIcon,
  double? borderRadius,
  Widget? suffixIcon,
  double? size = 52,
  Widget? suffix,
  bool textVisible = false,
}) {
  return TextFormField(
    controller: textEditingController,
    obscureText: textVisible,
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffE8E8E8)),
        borderRadius: BorderRadius.circular(
            (borderRadius == null) ? MySize.size10! : borderRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
            (borderRadius == null) ? MySize.size10! : borderRadius),
        borderSide: BorderSide(color: Color(0xffE8E8E8)),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
            (borderRadius == null) ? MySize.size10! : borderRadius),
      ),
      contentPadding: EdgeInsets.only(
        left: MySize.size20!,
        right: MySize.size10!,
        bottom: size! / 2, // HERE THE IMPORTANT PART
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      suffix: suffix,
      hintText: hintText,
      hintStyle: TextStyle(fontSize: MySize.size14!),
    ),
  );
}

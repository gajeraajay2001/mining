import 'package:flutter/material.dart';
import 'package:mining/constants/color_constant.dart';
import 'package:mining/constants/sizeConstant.dart';

Container button({
  double height = 50,
  double width = 341,
  String? title = "",
  Color? backgroundColor,
  Color? borderColor,
  Color? textColor,
  Widget? widget,
  double? textSize,
  double? borderRadius,
}) {
  return Container(
    height: MySize.getScaledSizeHeight(height),
    width: MySize.getScaledSizeWidth(width),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
          (borderRadius != null) ? borderRadius : MySize.size6!),
      border: Border.all(
          color: (borderColor == null)
              ? Colors.transparent
              : appTheme.primaryTheme),
      color:
          (backgroundColor == null) ? appTheme.primaryTheme : backgroundColor,
    ),
    alignment: Alignment.center,
    child: (widget != null)
        ? Center(child: widget)
        : Text(
            title!,
            style: TextStyle(
                color: (textColor == null) ? Colors.white : textColor,
                fontWeight: FontWeight.bold,
                fontSize: (textSize != null) ? textSize : MySize.size14!),
          ),
  );
}

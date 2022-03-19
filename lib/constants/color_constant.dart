import 'package:flutter/material.dart';

class BaseTheme {
  Color get primaryTheme => fromHex('#FD7100');
  Color get borderColor => fromHex('#E8E8E8');
  Color get textGrayColor => fromHex('#696F79');
  Color get secondaryColor => fromHex('#6F3600');
  Color get whiteColor => Colors.white;
}

BaseTheme get appTheme => BaseTheme();

Color fromHex(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

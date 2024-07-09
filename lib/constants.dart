import 'package:flutter/material.dart';

class Constants {
  static const kPrimaryColor = Color(0xFF100B20);
  static const kTranstionDuration = Duration(milliseconds: 300);

  static maxWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static maxHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}

import 'package:flutter/cupertino.dart';

class responsive {
  static double responsiveSize(context) {
    if (MediaQuery.of(context).size.width > 1100) {
      return MediaQuery.of(context).size.width / 2;
    } else if (MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1100) {
      return MediaQuery.of(context).size.width / 1.5;
    } else {
      return MediaQuery.of(context).size.width - 40;
    }
  }
}

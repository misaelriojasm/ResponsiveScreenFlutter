library responsive_screen;
import 'package:flutter/material.dart';

class Screen{
  dynamic context;

  Screen(this.context);

  double wp(percentage) {
    return percentage / 100 * MediaQuery.of(context).size.width;
  }

  double hp(percentage) {
    return percentage / 100 * MediaQuery.of(context).size.height;
  }
}

class Hp{
  dynamic height;
  Hp(this.height);

  double hp(percentage) {
    return percentage / 100 * height;
  }
}

class Wp{
  dynamic width;
  Wp(this.width);

  double wp(percentage) {
    return percentage / 100 * width;
  }


}
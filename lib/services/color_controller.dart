import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testapp/constants/app_colors.dart';

class ColorController {
  Color color = AppColors.defaultBackground;
  final Random _random = Random();
  static const int _maxChannelValue = 256;

  ColorController({Color? initColor})
    : color = initColor ?? AppColors.defaultBackground;

  void setRandomColor() => color = createRandomColor();

  void setDefaultColor() => color = AppColors.defaultBackground;

  Color createRandomColor() {
    return Color.fromARGB(
      _random.nextInt(_maxChannelValue),
      _random.nextInt(_maxChannelValue),
      _random.nextInt(_maxChannelValue),
      _random.nextInt(_maxChannelValue),
    );
  }
}

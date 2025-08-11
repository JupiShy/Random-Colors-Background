import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testapp/constants/app_colors.dart';

class ColorPicker {
  Color color = AppColors.defaultBackground;
  final String chars = 'ABCDEF0123456789';
  final Random random = Random();
  final int charAmount = 6;

  Color get getColor => color;

  Color createRandomColor() {
    String colorHex =
        List.generate(
          charAmount,
          (_) => chars[random.nextInt(chars.length)],
        ).join();
    int colorRaw = int.parse("0xFF$colorHex");

    return Color(colorRaw);
  }

  void setRandomColor() {
    color = createRandomColor();
  }
}

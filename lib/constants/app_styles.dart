import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/constants/app_colors.dart';

class AppStyles {
  static final TextStyle appBarText = GoogleFonts.orbitron(
    fontWeight: FontWeight.bold,
    fontSize: 32,
    color: AppColors.text,
  );
  static final TextStyle plainText = GoogleFonts.orbitron(
    fontSize: 24,
    color: AppColors.text,
  );

  const AppStyles._();
}

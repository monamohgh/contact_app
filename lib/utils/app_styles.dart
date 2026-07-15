import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle medium24Gold = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.gold,
  );
  static TextStyle medium20Gold = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.gold,
  );
  static TextStyle medium16Gold = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.gold,
  );
  static TextStyle regular16lightBlue = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.lightBlue,
  );
  static TextStyle regular20darkBlue = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.darkBlue,
  );
  static TextStyle medium10white = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );
  static TextStyle medium10darkBlue = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue,
  );
  static TextStyle medium14darkBlue = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue,
  );
}
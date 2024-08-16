import 'package:bookly_app/core/helper/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyleManager {
  static const String kGTSectionRegularFamily = "GT Sectra Fine Regular";
  static var kMontserratFamily = GoogleFonts.montserrat().fontFamily;

  static TextStyle textStyle14 = TextStyle(
    fontSize: 14,
    fontFamily: kMontserratFamily,
    fontStyle: FontStyle.normal,
    color: ColorsManager.kPrimaryColorGrey,
  );

  static TextStyle textStyleMedium14 = TextStyle(
    fontSize: 14,
    fontFamily: kMontserratFamily,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    color: ColorsManager.kPrimaryColorLightGrey,
  );
  static TextStyle textStyleMedium16 = TextStyle(
    fontSize: 16,
    fontFamily: kMontserratFamily,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyleBold16 = TextStyle(
    fontSize: 16,
    fontFamily: kMontserratFamily,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textStyleSemiBold18 = TextStyle(
    fontSize: 18,
    fontFamily: kMontserratFamily,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle textStyle18 = TextStyle(
    fontSize: 18,
    fontFamily: kGTSectionRegularFamily,
    fontStyle: FontStyle.normal,
  );
}
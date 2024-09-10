import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vandal/utils/app_colors.dart';

class AppTextStyles {
  /// Example: s14W500Roboto - fontSize 14.0 & fontWeight 500 & Roboto - font family
  /// Basic color for font is black000, height 1.0

  static TextStyle headlines1({Color? color = AppColors.black, height = 1.0}) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle headlines3({Color? color = AppColors.black, height = 1.0}) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle headlines3bold(
      {Color? color = AppColors.black, height = 1.0}) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle headlines2bold(
      {Color? color = AppColors.black, height = 1.0}) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle textSmallMed(
      {Color? color = AppColors.black, height = 1.0}) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle textLightMed({Color? color = AppColors.grey, height = 1.0}) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle textNormalMed(
      {Color? color = AppColors.black, height = 1.0}) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle textSmallReg(
      {Color? color = AppColors.black, height = 1.0}) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle textSmallBold(
      {Color? color = AppColors.black, height = 1.0}) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle textLightBold(
      {Color? color = AppColors.grey, height = 1.0}) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: 12.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle defaultStyle(
      {Color? color = AppColors.black, height = 1.0}) {
    return GoogleFonts.montserrat(
      color: color,
      height: height,
      fontSize: 10.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    );
  }
}

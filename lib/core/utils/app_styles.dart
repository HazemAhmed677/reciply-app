import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle semiBold14(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 14),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      );
  static TextStyle semiBold12(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 12),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      );
  static TextStyle semiBold16(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 16),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      );
  static TextStyle semiBold20(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 20),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      );
  static TextStyle semiBold15(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 15),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      );
  static TextStyle semiBold24(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 24),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      );
  static TextStyle semiBold56(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 56),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      );
  static TextStyle regular12(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 12),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
      );
  static TextStyle regular14(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 14),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
      );
  static TextStyle regular10(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 10),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
      );
  static TextStyle regular16(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 16),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
      );
  static TextStyle medium28(context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 28),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
      );
}

double getResponsiveText(
    {required BuildContext context, required double base}) {
  double scaleFactor = getScaleFactor(
    context: context,
  );
  double responsiveText = scaleFactor * base;
  double lowerLimit = responsiveText * 0.9;
  double upperLimit = responsiveText * 1.2;
  return responsiveText.clamp(lowerLimit, upperLimit);
}

double getScaleFactor({required BuildContext context}) {
  double widthOfScreen = MediaQuery.of(context).size.width;
  return widthOfScreen / 400;
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kwalu_selli/core/color/colors.dart';

extension TextStyleX on String {
  Text _text({
    required double fontSize,
    required double height,
    Color? textColor,
    FontWeight? fontWeight,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) {
    final TextStyle style = googleFont ?? GoogleFonts.poppins();
    return Text(
      this,
      key: key,
      style: style.copyWith(
        // height: height,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing ?? 0,
        fontSize: fontSize,
        color: textColor ?? primaryColor[500],

        decoration: decoration,
      ),
      textDirection: TextDirection.ltr,
      overflow: textOverflow,
      maxLines: maxLines,
      textAlign: isCentered != null ? TextAlign.center : null,
    );
  }

  Text heading1({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.bold,
        height: 40,
        fontSize: 40,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text heading2({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w600,
        height: 36,
        fontSize: 32,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text heading3({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w500,
        height: 32,
        fontSize: 24,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text heading4({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w600,
        height: 32,
        fontSize: 20,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text extraSmallTextMedium({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w500,
        height: 16,
        fontSize: 10,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0.4,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text extraSmallTextRegular({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w400,
        height: 16,
        fontSize: 10,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0.4,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text smallTextMedium({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w500,
        height: 20,
        fontSize: 12,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0.25,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text smallTextRegular({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w400,
        height: 20,
        fontSize: 12,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0.25,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text mediumTextMedium({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w600,
        height: 24,
        fontSize: 14,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0.15,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text mediumTextRegular({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w400,
        height: 24,
        fontSize: 14,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0.15,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text largeTextMedium({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w500,
        height: 20,
        fontSize: 16,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0.1,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text largeTextRegular({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w400,
        height: 20,
        fontSize: 16,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0.1,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text extraLargeTextMedium({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w500,
        height: 28,
        fontSize: 18,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );

  Text extraLargeTextRegular({
    Color? textColor,
    bool? isCentered,
    double? letterSpacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    TextStyle? googleFont,
    int? maxLines,
    TextOverflow? textOverflow,
    Key? key,
  }) =>
      _text(
        googleFont: googleFont,
        fontWeight: fontWeight ?? FontWeight.w400,
        height: 28,
        fontSize: 18,
        isCentered: isCentered,
        textColor: textColor,
        letterSpacing: 0,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
        key: key,
      );
}

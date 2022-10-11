import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../color/colors.dart';
import '../../styles/border_radius.dart';
import '../../styles/sizing.dart';

final FlexSchemeColor _schemeLight = FlexSchemeColor.from(
  primary: primaryColor[500]!,
  secondary: primaryColor[500],
);

const FlexScheme _scheme = FlexScheme.blue;

const bool _useScheme = false;

const double _appBarElevation = 0.5;

const double _appBarOpacity = 0.94;

String _fontFamily = GoogleFonts.poppins().fontFamily!;

const FlexSurfaceMode _surfaceMode = FlexSurfaceMode.highBackgroundLowScaffold;

const int _blendLevel = 15;

const bool _useSubThemes = true;

const FlexSubThemesData _subThemesData = FlexSubThemesData(
  bottomSheetRadius: 24,
  inputDecoratorSchemeColor: SchemeColor.primary,
  chipSchemeColor: SchemeColor.primary,
  bottomNavigationBarSchemeColor: SchemeColor.primary,
  bottomNavigationBarBackgroundSchemeColor: SchemeColor.background,
);

const bool _tooltipsMatchBackground = true;

final VisualDensity _visualDensity = FlexColorScheme.comfortablePlatformDensity;

final TargetPlatform _platform = defaultTargetPlatform;

ThemeData flexThemeLight = FlexThemeData.light(
  colors: _useScheme ? null : _schemeLight,
  scheme: _scheme,
  appBarElevation: _appBarElevation,
  appBarOpacity: _appBarOpacity,
  surfaceMode: _surfaceMode,
  blendLevel: _blendLevel,
  tooltipsMatchBackground: _tooltipsMatchBackground,
  fontFamily: _fontFamily,
  useSubThemes: _useSubThemes,
  subThemesData: _subThemesData,
  visualDensity: _visualDensity,
  platform: _platform,
).copyWith(
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: secondaryColor[700],
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.only(
      top: kDefaultSizing,
      bottom: kDefaultSizing,
      right: kDefaultSizing,
      left: kDefaultSizing,
    ),
    hintStyle: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: secondaryColor[600],
      letterSpacing: 0.15,
    ),
    errorStyle: GoogleFonts.poppins(
      color: accentRed[500],
      letterSpacing: 0.25,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelStyle: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
    ),
    helperStyle: GoogleFonts.poppins(),
    floatingLabelStyle: GoogleFonts.poppins(
      fontSize: 16,
      letterSpacing: 1,
      color: secondaryColor[500],
    ),
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: const CBorderRadius.allVerySmall(),
      borderSide: BorderSide(
        color: secondaryColor[600]!,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: const CBorderRadius.allVerySmall(),
      borderSide: BorderSide(
        color: secondaryColor[400]!,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const CBorderRadius.allVerySmall(),
      borderSide: BorderSide(
        color: secondaryColor[600]!,
      ),
    ),
  ),
);

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Application's light theme
final appThemeLight = FlexColorScheme.light(
        scheme: FlexScheme.redWine,
        fontFamily: GoogleFonts.poppins().fontFamily)
    .toTheme
    .copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(),
        backgroundColor: const Color(0xFFF1F3F5));

/// Application's dark theme
final appThemeDark = FlexColorScheme.dark(
        scheme: FlexScheme.redWine,
        fontFamily: GoogleFonts.poppins().fontFamily)
    .toTheme
    .copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(),
      backgroundColor: const Color(0xFFF1F3F5),
    );

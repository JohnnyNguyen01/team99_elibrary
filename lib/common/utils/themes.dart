import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';

/// Application's light theme
final appThemeLight = FlexColorScheme.light(
        scheme: FlexScheme.redWine,
        fontFamily: GoogleFonts.poppins().fontFamily)
    .toTheme
    .copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(),
    );

/// Application's dark theme
final appThemeDark = FlexColorScheme.dark(
        scheme: FlexScheme.redWine,
        fontFamily: GoogleFonts.poppins().fontFamily)
    .toTheme
    .copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(),
    );

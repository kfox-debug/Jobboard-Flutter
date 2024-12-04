import 'package:flutter/material.dart';
import 'package:lyte_studios_flutter_ui/theme/extensions/hex_color.dart';

import './border_radii.dart';
import './text_styles.dart';

final jobrTheme = ThemeData(
  hoverColor: Colors.transparent,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: HexColor.fromHex('#FF3E68'),
    onPrimary: Colors.white,
    secondary: HexColor.fromHex('#191919'),
    onSecondary: Colors.white,
    tertiary: Colors.black.withOpacity(0.03),
    error: HexColor.fromHex('#F62C2C'),
    onError: Colors.white,
    errorContainer: HexColor.fromHex('#F62C2C'),
    onErrorContainer: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
    primaryContainer: Colors.black.withOpacity(0.03),
    onPrimaryContainer: Colors.black,
    secondaryContainer: Colors.black.withOpacity(0.03),
    onSecondaryContainer: Colors.black,
    outline: Colors.black,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyles.titleLarge,
    titleMedium: TextStyles.titleMedium,
    titleSmall: TextStyles.titleSmall,
    bodyLarge: TextStyles.bodyLarge,
    bodyMedium: TextStyles.bodyMedium,
    bodySmall: TextStyles.bodySmall,
    labelLarge: TextStyles.labelLarge,
    labelMedium: TextStyles.labelMedium,
    labelSmall: TextStyles.labelSmall,
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyles.labelSmall.copyWith(
      fontSize: 14,
      color: Colors.black.withOpacity(0.8),
    ),
    filled: true,
    fillColor: HexColor.fromHex("#F6F6F6"),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(
        27,
      ),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(
        27,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex('#FF3E68'),
      ),
      borderRadius: BorderRadius.circular(
        27,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#E13232"),
      ),
      borderRadius: BorderRadius.circular(
        27,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#E13232"),
      ),
      borderRadius: BorderRadius.circular(
        BorderRadii.small,
      ),
    ),
    hoverColor: null,
  ),
);

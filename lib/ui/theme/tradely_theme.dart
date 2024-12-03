import 'package:flutter/material.dart';
import 'package:lyte_studios_flutter_ui/theme/extensions/hex_color.dart';
import './border_radii.dart';
import './text_styles.dart';

final tradelyTheme = ThemeData(
  scaffoldBackgroundColor: HexColor.fromHex("#111111"),
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: HexColor.fromHex('#2D62FE'),
    onPrimary: HexColor.fromHex('#FFFFFF'),
    secondary: HexColor.fromHex('#5FD5EC'),
    onSecondary: HexColor.fromHex('#FFFFFF'),
    tertiary: HexColor.fromHex('#14D39F'),
    error: HexColor.fromHex('#E13232'),
    onError: HexColor.fromHex('#E67E22'),
    errorContainer: HexColor.fromHex('#2A1718'),
    onErrorContainer: HexColor.fromHex('#1C1612'),
    surface: HexColor.fromHex('#131313'),
    onSurface: HexColor.fromHex('#FFFFFF'),
    primaryContainer: HexColor.fromHex('#242424'),
    onPrimaryContainer: HexColor.fromHex('#CCCCCC'),
    secondaryContainer: HexColor.fromHex('#1A1A1A'),
    onSecondaryContainer: HexColor.fromHex('#CCCCCC'),
    tertiaryContainer: HexColor.fromHex("#171717"),
    onTertiaryContainer: HexColor.fromHex("#8B8B8B"),

    /// borders
    outline: HexColor.fromHex("#1F1F1F"),
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
    hintStyle: TextStyles.labelLarge.copyWith(
      color: HexColor.fromHex("#8B8B8B"),
    ),
    filled: true,
    fillColor: HexColor.fromHex("#171717"),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#313334"),
      ),
      borderRadius: BorderRadius.circular(
        BorderRadii.small,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#313334"),
      ),
      borderRadius: BorderRadius.circular(
        BorderRadii.small,
      ),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#313334"),
      ),
      borderRadius: BorderRadius.circular(
        BorderRadii.small,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#E13232"),
      ),
      borderRadius: BorderRadius.circular(
        BorderRadii.small,
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

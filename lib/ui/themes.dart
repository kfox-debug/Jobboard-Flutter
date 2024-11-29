import 'package:flutter/material.dart';
import 'package:lyte_studios_flutter_ui/theme/extensions/hex_color.dart';
import 'package:tradelog_flutter/src/ui/theme/border_radii.dart';
import 'package:tradelog_flutter/src/ui/theme/text_styles.dart';

final tradelyTheme = ThemeData(
  scaffoldBackgroundColor: HexColor.fromHex("#FFFFFF"),
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: HexColor.fromHex('#FF3E68'),
    onPrimary: HexColor.fromHex('#FFFFFF'),
    secondary: HexColor.fromHex('#3A77FF'),
    onSecondary: HexColor.fromHex('#FFFFFF'),
    tertiary: HexColor.fromHex('#FFFFFF'),
    onTertiary: HexColor.fromHex('#FF3E68'),
    error: HexColor.fromHex('#FF3535'),
    onError: HexColor.fromHex('#FFFFFF'),
    errorContainer: HexColor.fromHex('#FFFFFF'),
    onErrorContainer: HexColor.fromHex('#000000'),
    surface: HexColor.fromHex('#000000'),
    onSurface: HexColor.fromHex('#070707'),
    primaryContainer: HexColor.fromHex('#FFFFFF'),
    onPrimaryContainer: HexColor.fromHex('#000000'),
    secondaryContainer: HexColor.fromHex('#FFFFFF'),
    onSecondaryContainer: HexColor.fromHex('#000000'),
    tertiaryContainer: HexColor.fromHex("#FFFFFF"),
    onTertiaryContainer: HexColor.fromHex("#000000"),

    /// borders
    outline: HexColor.fromHex("#FFFFFF"),
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
      color: HexColor.fromHex("#878787"),
    ),
    filled: true,
    fillColor: HexColor.fromHex("#D9D9D94F"),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#FFFFFF"),
      ),
      borderRadius: BorderRadius.circular(
        BorderRadii.small,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#000000"),
      ),
      borderRadius: BorderRadius.circular(
        BorderRadii.small,
      ),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#FFFFFF"),
      ),
      borderRadius: BorderRadius.circular(
        BorderRadii.small,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#000000"),
      ),
      borderRadius: BorderRadius.circular(
        BorderRadii.small,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#FFFFFF"),
      ),
      borderRadius: BorderRadius.circular(
        BorderRadii.small,
      ),
    ),
    hoverColor: null,
  ),
);
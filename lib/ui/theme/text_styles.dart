import 'package:flutter/material.dart';
import 'package:lyte_studios_flutter_ui/theme/extensions/hex_color.dart';

class TextStyles {
  static Color mediumTitleColor = HexColor.fromHex("#898989");
  static Color bodyColor = HexColor.fromHex("#CCCCCC");
  static Color mediumBodyColor = HexColor.fromHex("#6E6E6E");
  static Color labelTextColor = HexColor.fromHex("#767676");
  static Color titleColor = HexColor.fromHex('#FFFFFF');
  static Color subTitleColor = HexColor.fromHex('#7C7C7C');

  // --------------------------------------
  // Title
  static TextStyle titleLarge = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 28,
    color: titleColor,
  );

  static TextStyle titleMedium = TextStyle(
    fontSize: 17,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    color: mediumTitleColor,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: 'Inter',
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: titleColor,
  );

  // --------------------------------------
  // body
  /// large text in body
  static TextStyle bodyLarge = TextStyle(
    fontFamily: 'Inter',
    fontSize: 44,
    color: bodyColor,
    fontWeight: FontWeight.w600,
  );

  /// medium text in body
  static TextStyle bodyMedium = TextStyle(
    fontFamily: 'Inter',
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: mediumBodyColor,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: mediumBodyColor,
  );

  // --------------------------------------
  // label
  /// text input label
  static TextStyle labelLarge = TextStyle(
    color: labelTextColor,
    fontSize: 17,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  /// tool tip text
  static TextStyle labelMedium = TextStyle(
    fontFamily: 'Inter',
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: titleColor,
  );

  // not used yet -
  static TextStyle labelSmall = TextStyle(
    fontFamily: 'Inter',
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: titleColor,
  );
}

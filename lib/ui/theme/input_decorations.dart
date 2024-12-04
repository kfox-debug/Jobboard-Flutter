import 'package:flutter/material.dart';
import 'package:lyte_studios_flutter_ui/theme/extensions/hex_color.dart';
import './border_radii.dart';

class InputDecorations {
  static InputDecoration defaultInputDecoration = InputDecoration(
    filled: true,
    fillColor: HexColor.fromHex("#171717"),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: HexColor.fromHex("#313334"),
      ),
      borderRadius: BorderRadius.circular(
        BorderRadii.small,
      ),
    ),
  );
}

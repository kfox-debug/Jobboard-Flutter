import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class BasicIcons {
  static const String _basePath = 'assets/images';
  static const String _baseIconPath = 'assets/images/icons';
  static const String _baseLogoPath = 'assets/images/logos';

  static Future<void> preload(BuildContext context) async {
    for (String icon in icons) {
      if (icon.contains('.svg')) {
        await precacheImage(
          Svg(icon),
          context,
        );
      } else {
        await precacheImage(
          AssetImage(icon),
          context,
        );
      }
    }
  }

  static const String Logo_light = '$_baseLogoPath/logo_light.png';
  static const String Logo_dark = '$_baseIconPath/logo_dark.png';

  static const String googleIcon = '$_baseIconPath/google.svg';
  static const String appleIcon = '$_baseIconPath/apple.svg';
  static const String emailIcon = '$_baseIconPath/email.svg';
  static const String lighteningIcon = '$_baseIconPath/lightening.svg';
  static const String bagIcon = '$_baseIconPath/bag.svg';

  static const List<String> icons = [
    Logo_light,
    Logo_dark,
    googleIcon,
    appleIcon,
    emailIcon,
    lighteningIcon,
    bagIcon
  ];
}

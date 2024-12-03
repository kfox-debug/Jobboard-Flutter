import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class JobrIcons {
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

  static const String logoLight = '$_baseLogoPath/jobr_logo_light.svg';

  static const String googleIcon = '$_baseIconPath/google.svg';
  static const String appleIcon = '$_baseIconPath/apple.svg';
  static const String emailIcon = '$_baseIconPath/email.svg';
  static const String lighteningIcon = '$_baseIconPath/lightening.svg';
  static const String bagIcon = '$_baseIconPath/bag.svg';
  static const String chevronLeftIcon = '$_baseIconPath/chevron_left.svg';

  static const List<String> icons = [
    logoLight,
    googleIcon,
    appleIcon,
    emailIcon,
    lighteningIcon,
    bagIcon
  ];
}

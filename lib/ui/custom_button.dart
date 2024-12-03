import 'package:flutter/material.dart';
import 'package:flutter_exam/ui/common_widgets/icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lyte_studios_flutter_ui/lyte_studios_flutter_ui.dart' as lyte;

class GeneralButton extends StatelessWidget {
  final double width;
  final double height;
  final Color textColor;
  final Color buttonColor;
  final Color buttonBorderColor; // New property
  final double buttonBorderWidth; // New property
  final String label;
  final double fontSize;
  final String fontFamily;
  final double radius;
  final VoidCallback onPressed;

  const GeneralButton({
    this.width = 200.0,
    this.height = 50.0,
    this.textColor = Colors.white,
    this.buttonColor = Colors.blue,
    this.buttonBorderColor = Colors.transparent, // Default value
    this.buttonBorderWidth = 0.0, // Default value
    this.fontSize = 16.0,
    this.fontFamily = 'Roboto',
    this.radius = 12.0,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: buttonBorderColor,
            width: buttonBorderWidth,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontFamily: fontFamily,
          ),
        ),
      ),
    );
  }
}

class IconLabelButton extends StatelessWidget {
  final double width;
  final double height;
  final Color textColor;
  final Color buttonColor;
  final Color buttonBorderColor; // New property
  final double buttonBorderWidth; // New property
  final IconData icon;
  final String label;
  final double fontSize;
  final String fontFamily;
  final double radius;
  final VoidCallback onPressed;

  const IconLabelButton({
    this.width = 220.0,
    this.height = 50.0,
    this.textColor = Colors.white,
    this.buttonColor = Colors.green,
    this.buttonBorderColor = Colors.transparent, // Default value
    this.buttonBorderWidth = 0.0, // Default value
    this.fontSize = 16.0,
    this.fontFamily = 'Roboto',
    this.radius = 12.0,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: buttonBorderColor,
            width: buttonBorderWidth,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: textColor, size: fontSize),
            SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontFamily: fontFamily,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SvgIcon extends StatelessWidget {
  final String icon;

  const SvgIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon, // Path to your SVG asset
      width: 24.0, // Set the size of the icon
      height: 24.0,
    );
  }
}

class SvgIconLabelButton extends StatelessWidget {
  final double width;
  final double height;
  final Color textColor;
  final Color buttonColor;
  final Color buttonBorderColor; // New property
  final double buttonBorderWidth; // New property
  final String icon;
  final String label;
  final double fontSize;
  final String fontFamily;
  final double radius;
  final VoidCallback onPressed;

  const SvgIconLabelButton({
    this.width = 220.0,
    this.height = 50.0,
    this.textColor = Colors.white,
    this.buttonColor = Colors.green,
    this.buttonBorderColor = Colors.transparent, // Default value
    this.buttonBorderWidth = 0.0, // Default value
    this.fontSize = 16.0,
    this.fontFamily = 'Roboto',
    this.radius = 12.0,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: buttonBorderColor,
            width: buttonBorderWidth,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 32,
              child: lyte.SvgIcon(
                BasicIcons.appleIcon,
                size: 24,
              ),
            ), // Ensure this widget is implemented correctly
            SizedBox(width: 8),
            Container(
              // Allow the text to take available space
              child: Text(
                label,
                style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                  fontFamily: fontFamily,
                ),
                overflow: TextOverflow.ellipsis, // Handle overflow
                textAlign: TextAlign.center, // Center text
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LabelButton extends StatelessWidget {
  final double width;
  final double height;
  final Color textColor;
  final Color buttonColor;
  final Color buttonBorderColor; // New property
  final Color iconColor;
  final double buttonBorderWidth; // New property
  final String icon;
  final String label;
  final double fontSize;
  final String fontFamily;
  final double radius;
  final VoidCallback onPressed;

  const LabelButton({
    this.width = 220.0,
    this.height = 50.0,
    this.iconColor = Colors.yellow,
    this.textColor = Colors.white,
    this.buttonColor = Colors.green,
    this.buttonBorderColor = Colors.transparent, // Default value
    this.buttonBorderWidth = 0.0, // Default value
    this.fontSize = 16.0,
    this.fontFamily = 'Roboto',
    this.radius = 12.0,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: buttonBorderColor,
            width: buttonBorderWidth,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 32,
                child: Text(
                  "$icon",
                  style: TextStyle(
                    color: iconColor,
                    fontFamily: 'Eloquia Display',
                    fontSize: 20,
                  ),
                )), // Ensure this widget is implemented correctly
            SizedBox(width: 8),
            Container(
              // Allow the text to take available space
              child: Text(
                label,
                style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w800),
                overflow: TextOverflow.ellipsis, // Handle overflow
                textAlign: TextAlign.center, // Center text
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LabelIconButton extends StatelessWidget {
  final double width;
  final double height;
  final Color textColor;
  final Color buttonColor;
  final Color buttonBorderColor; // New property
  final double buttonBorderWidth; // New property
  final String label;
  final String icon;
  final Color iconColor;
  final double fontSize;
  final String fontFamily;
  final double radius;
  final VoidCallback onPressed;

  const LabelIconButton({
    this.width = 220.0,
    this.height = 50.0,
    this.textColor = Colors.white,
    this.buttonColor = Colors.red,
    this.iconColor = Colors.black,
    this.buttonBorderColor = Colors.transparent, // Default value
    this.buttonBorderWidth = 0.0, // Default value
    this.fontSize = 16.0,
    this.fontFamily = 'Roboto',
    this.radius = 12.0,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: buttonBorderColor,
            width: buttonBorderWidth,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                  fontFamily: fontFamily,
                  letterSpacing: -0.5),
            ),
            SizedBox(width: 8),
            Container(
              child: lyte.SvgIcon(
                icon,
                size: 20,
                color: iconColor,
              ),
              width: 32,
            ),
          ],
        ),
      ),
    );
  }
}

class BasicButton extends StatelessWidget {
  final double width;
  final double height;
  final Color textColor;
  final Color buttonColor;
  final Color buttonBorderColor; // New property
  final double buttonBorderWidth; // New property
  final String label;
  final Widget icon;
  final double fontSize;
  final String fontFamily;
  final double radius;
  final VoidCallback onPressed;

  const BasicButton({
    this.width = 220.0,
    this.height = 50.0,
    this.textColor = Colors.white,
    this.buttonColor = Colors.red,
    this.buttonBorderColor = Colors.transparent, // Default value
    this.buttonBorderWidth = 0.0, // Default value
    this.fontSize = 16.0,
    this.fontFamily = 'Roboto',
    this.radius = 12.0,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: buttonBorderColor,
            width: buttonBorderWidth,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontFamily: fontFamily,
              ),
            ),
            SizedBox(width: 8),
            Container(
              child: icon,
              width: 32,
            ),
          ],
        ),
      ),
    );
  }
}

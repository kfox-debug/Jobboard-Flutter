import 'package:flutter/material.dart';

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
class LabelIconButton extends StatelessWidget {
  final double width;
  final double height;
  final Color textColor;
  final Color buttonColor;
  final Color buttonBorderColor; // New property
  final double buttonBorderWidth; // New property
  final String label;
  final IconData icon;
  final double fontSize;
  final String fontFamily;
  final double radius;
  final VoidCallback onPressed;

  const LabelIconButton({
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
            Icon(icon, color: textColor, size: fontSize),
          ],
        ),
      ),
    );
  }
}

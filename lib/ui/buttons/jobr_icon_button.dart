import 'package:flutter/material.dart';
import 'package:flutter_exam/ui/theme/text_styles.dart';
import 'package:lyte_studios_flutter_ui/lyte_studios_flutter_ui.dart';
import 'package:lyte_studios_flutter_ui/theme/extensions/hex_color.dart';

class JobrIconButton extends StatelessWidget {
  final double? width;
  final double height;
  final Color? textColor;
  final Color? buttonColor;
  final String label;
  final String? icon;
  final double fontSize;
  final double radius;

  final bool reverseAlign;

  final VoidCallback onPressed;

  const JobrIconButton({
    this.width,
    this.height = 52.0,
    this.textColor,
    this.buttonColor,
    this.fontSize = 18,
    this.radius = 27,
    required this.label,
    this.icon,
    required this.onPressed,
    this.reverseAlign = false,
  });

  @override
  Widget build(BuildContext context) {
    return ClearInkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor ?? HexColor.fromHex('#F6F6F6F6'),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Row(
          textDirection: reverseAlign ? TextDirection.rtl : TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon == null
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SvgIcon(
                      icon!,
                      size: 20,
                      leaveUnaltered: true,
                    ),
                  ),
            Text(
              label,
              style: TextStyles.bodyMedium.copyWith(
                fontSize: fontSize,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

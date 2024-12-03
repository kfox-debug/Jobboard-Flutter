import 'package:flutter/material.dart';
import 'package:flutter_exam/ui/theme/padding_sizes.dart';
import 'package:flutter_exam/ui/theme/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  final String hintText;

  /// By default this is the theme set color
  final Color? hintTextColor;

  /// By default this is the theme set color
  final Color? formColor;

  final double borderRadius;

  final double width;

  final double height;

  final EdgeInsets contentPadding;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.hintTextColor,
    this.formColor,
    this.borderRadius = 27,
    this.width = 346,
    this.height = 50,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 23,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorHeight: 27,
      style: TextStyles.bodySmall,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: PaddingSizes.large,
        ),
        hintText: hintText,
      ),
      // Add other properties as needed, e.g., controller, onChanged, etc.
    );
  }
}

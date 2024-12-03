import 'package:flutter/material.dart';

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
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintTextColor,
            fontSize: 16.0,
          ),
          filled: true,
          fillColor: formColor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
          ),
          contentPadding: contentPadding,
        ),
        // Add other properties as needed, e.g., controller, onChanged, etc.
      ),
    );
  }
}

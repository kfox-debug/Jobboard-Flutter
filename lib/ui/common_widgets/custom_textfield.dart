import 'package:flutter/material.dart';
import 'package:lyte_studios_flutter_ui/theme/extensions/hex_color.dart';
import 'package:flutter_exam/ui/theme/border_radii.dart';

class customTextField extends StatelessWidget {
  final String hintText;
  final Color hintTextColor;
  final Color formColor;
  final double borderRadius;
  final double width;
  final double height;
  final EdgeInsets contentPadding;

  const customTextField({
    Key? key,
    required this.hintText,
    this.hintTextColor = Colors.black26,
    this.formColor = const Color(0xFFF6F6F6),
    this.borderRadius = 27,
    this.width = 346,
    this.height = 50,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 23),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: SizedBox(
        width: width,
        height: height,
        child: TextField(
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
      ),
    );
  }
}

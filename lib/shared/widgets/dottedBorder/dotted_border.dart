import 'package:datting_app/core/theme/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CustomDottedBorder extends StatelessWidget {
  final Widget child; // The widget inside the dotted border
  final Color borderColor; // Color of the dotted border
  final List<double> dashPattern; // Dash pattern for the border
  final double borderWidth; // Width of the border
  final EdgeInsets padding; // Padding inside the border
  final BorderRadius? borderRadius; // Optional border radius

  const CustomDottedBorder({
    Key? key,
    required this.child,
   this.borderColor = AppColors.primary,
    this.dashPattern = const [10, 3], // Default dash pattern
    this.borderWidth = 0.2,
    this.padding = const EdgeInsets.all(6.0),
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: borderColor,
      strokeWidth: borderWidth,
      dashPattern: dashPattern,
      borderType: BorderType.Circle, // Use rounded rectangle for border
      radius:Radius.circular(12.0), // Extract Radius or use default
      padding: padding,
      child: child,
    );
  }
}
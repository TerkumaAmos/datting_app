import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgContainer extends StatelessWidget {
  final double size; // Required to enforce square shape
  final Color borderColor;
  final double borderWidth;
  final String svgPath;
  final double? svgWidth;
  final double? svgHeight;
  final double borderRadius; // Changed to double for consistency with Flutter

  const CustomSvgContainer({
    super.key,
    required this.size, // Required to ensure square
    this.borderColor = Colors.black, // Default to match CustomInput
    this.borderWidth = 2.0, // Default to match CustomInput
    required this.svgPath, // Required since SVG is the main content
    this.svgWidth,
    this.svgHeight,
    required this.borderRadius, // Use double for borderRadius
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size, // Enforce square width
      height: size, // Enforce square height
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(borderRadius), // Apply curved border
      ),
      child: Center(
        child: SvgPicture.asset(
          svgPath,
          width: svgWidth, // Use provided svgWidth
          height: svgHeight, // Use provided svgHeight
          fit: BoxFit.contain, // Ensure SVG scales within container
        ),
      ),
    );
  }
}
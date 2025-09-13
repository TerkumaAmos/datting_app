import 'package:datting_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomPositionedCircle extends StatelessWidget {
  final double top; // Vertical position from the top
  final double left; // Horizontal position from the left
  final double width; // Width of the container
  final double height; // Height of the container
  final Color color; // Background color of the container
  final BoxShape shape; // Shape of the container (defaults to circle)

  const CustomPositionedCircle({
    super.key,
    required this.top,
    required this.left,
    required this.width,
    required this.height,
    this.color =AppColors.primary, // Default to yellow as per your example
    this.shape = BoxShape.circle, // Default to circle as per your example
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          shape: shape,
        ),
      ),
    );
  }
}
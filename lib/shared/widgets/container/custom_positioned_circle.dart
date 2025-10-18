import 'package:datting_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomPositionedCircle extends StatelessWidget {
  final double? top; // Optional vertical position from the top
  final double? left; // Optional horizontal position from the left
  final double? width; // Optional width of the container
  final double? height; // Optional height of the container
  final Color? color; // Optional background color of the container
  final BoxShape? shape; // Optional shape of the container
  final String? text; // Optional text to display in the circle
  final Color? textColor; // Optional text color

  const CustomPositionedCircle({
    super.key,
    this.top, // Nullable, no default value
    this.left, // Nullable, no default value
    this.width, // Nullable, no default value
    this.height, // Nullable, no default value
    this.color, // Nullable, no default value
    this.shape = BoxShape.circle, // Default to circle if not provided
    this.text, // Nullable, no default value
    this.textColor, // Nullable, no default value
  });

  @override
  Widget build(BuildContext context) {
    // Build the circle container first
    final circle = Container(
      width: width ?? 50, // Default width if not provided
      height: height ?? 50, // Default height if not provided
      decoration: BoxDecoration(
        color: color ?? AppColors.primary, // Default to primary color if not provided
        shape: shape ?? BoxShape.circle, // Default to circle if not provided
      ),
      // Center the text within the container if provided
      child: text != null
          ? Center(
              child: Text(
                text!,
                style: TextStyle(
                  color: textColor ?? Colors.black, // Default to black if not provided
                  fontSize: 14, // Adjustable default font size
                  fontWeight: FontWeight.bold, // Optional: for better visibility
                ),
              ),
            )
          : null,
    );

    // If this widget is placed inside a Stack (or RenderStack exists in the ancestor tree),
    // use Positioned so the caller can provide top/left as intended. Otherwise, return
    // a normal widget (with optional padding to emulate left/top offsets) so it can be
    // safely used inside Row/Column/Flex without throwing ParentData errors.
  final hasStackAncestor = context.findAncestorWidgetOfExactType<Stack>() != null;

    if (hasStackAncestor) {
      return Positioned(
        top: top,
        left: left,
        child: circle,
      );
    }

    // Not inside a Stack: apply padding offsets instead of Positioned
    return Padding(
      padding: EdgeInsets.only(left: left ?? 0, top: top ?? 0),
      child: circle,
    );
  }
}
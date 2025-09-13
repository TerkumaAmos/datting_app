import 'package:datting_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Color? color; // Controls border color (border only in unfilled mode)
  final Color? textColor; // Controls text color
  final Color? backgroundColor; // Controls button background when filled
  final double? elevation;
  final String? icon; // SVG asset path for prefix icon
  final double? iconWidth; // Custom width for SVG icon
  final double? iconHeight; // Custom height for SVG icon
  final double borderWidth; // Controls border thickness (only in unfilled mode)
  final bool isFilled; // Controls filled vs. unfilled (transparent) style

  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.width,
    this.height,
    this.padding,
    this.color,
    this.textColor, // Optional, defaults to Colors.white in build
    this.backgroundColor,
    this.elevation,
    this.icon, // Optional SVG icon path
    this.iconWidth = 24.0, // Default SVG icon width
    this.iconHeight = 24.0, // Default SVG icon height
    this.borderWidth = 1.0, // Default to prominent border for unfilled mode
    this.isFilled = true, // Default to filled button
  });

  @override
  Widget build(BuildContext context) {
    final borderColor = color ?? AppColors.black; // Border color
    final txtColor = textColor ?? Colors.white; // Default text color
    final bgColor = isFilled ? (backgroundColor ?? AppColors.primary) : Colors.transparent; // Purple when filled, transparent when unfilled
    final borderRadius = BorderRadius.circular(30);

    final child = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) ...[
          SvgPicture.asset(
            icon!,
            width: iconWidth, // Custom or default icon width
            height: iconHeight, // Custom or default icon height
          ),
          const SizedBox(width: 8), // Spacing between icon and text
        ],
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            color: txtColor,
            fontFamily: 'Regular',
          ),
        ),
      ],
    );

    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 36,
      child: Material(
        elevation: elevation ?? 0,
        borderRadius: borderRadius,
        color: bgColor,
        child: InkWell(
          onTap: onPressed,
          borderRadius: borderRadius,
          child: Container(
            decoration: BoxDecoration(
              border: isFilled
                  ? null // No border in filled mode
                  : Border.all(
                      color: borderColor,
                      width: borderWidth, // Prominent border in unfilled mode
                    ),
              borderRadius: borderRadius,
            ),
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
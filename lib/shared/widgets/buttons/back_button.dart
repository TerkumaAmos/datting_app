import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final double? size;
  final String svgPath;

  const CustomBackButton({
    super.key,
    this.onPressed,
    this.color,
    this.size = 24.0,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ?? () => Navigator.pop(context),
      icon: SvgPicture.asset(
        svgPath,
        colorFilter: color != null
            ? ColorFilter.mode(color!, BlendMode.srcIn)
            : null,
        width: size,
        height: size,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CircleAvatarField extends StatelessWidget {
  // final Widget? icon;
   final ImageProvider? image;
  final Widget? svgContent; // New parameter for SVG widget

  const CircleAvatarField(
      {super.key,
      //this.icon, this.image,
      this.svgContent, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      child: Center(
        child: CircleAvatar(
          radius: 40,
          child: svgContent, // Use SVG content or icon
          backgroundImage: image,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

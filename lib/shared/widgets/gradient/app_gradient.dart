import 'package:flutter/material.dart';

class AppGradients {
  static const radialBackground = RadialGradient(
    center: Alignment.center,
    radius: 1.5,
    colors: [
      Colors.white,
      Color(0xFFfbf1af), // Light yellow
      Color(0xFFf9e07f),
    ],
    stops: [0.2, 0.7, 1.0],
  );
}
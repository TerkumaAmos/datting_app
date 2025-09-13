import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors (based on yellow from design)
  static const Color primary = Color(0xFFFFD700); // Yellow from buttons and background gradient
  static const Color primaryLight = Color(0xFFFFFFE0); // Lighter yellow variant
  static const Color primaryDark = Color(0xFFC0A80A); // Darker yellow variant

  // Secondary Colors (neutral tones from design)
  static const Color secondary = Color(0xFF333333); // Dark gray for text/icons
  static const Color secondaryLight = Color(0xFF666666); // Lighter gray variant
  static const Color secondaryDark = Color(0xFF1A1A1A); // Darker gray variant

  // Status Colors (using neutral tones as placeholders)
  static const Color success = Color(0xFF4CAF50); // Placeholder, not prominent in design
  static const Color warning = Color(0xFFFFD700); // Matches primary yellow
  static const Color error = Color(0xFFF44336); // Placeholder, not prominent in design
  static const Color info = Color(0xFF2196F3); // Placeholder, not prominent in design

  // Neutral Colors
  static const Color black = Color(0xFF000000); // Background and text
  static const Color white = Color(0xFFFFFFFF); // Text fields and icons
  static const Color grey = Color(0xFF9E9E9E); // Placeholder gray
  static const Color lightGrey = Color(0xFFF5F5F5); // Background areas
  static const Color darkGrey = Color(0xFF333333); // Text and icons
  static const Color creamWhite = Color(0xFFF5F5F5); // Light background
  static const Color transparent = Colors.transparent; // Dark background

  // Text Colors
  static const Color textPrimaryLight = Color(0xFF000000); // Black for light mode text
  static const Color textSecondaryLight = Color(0xFF333333); // Dark gray for secondary text
  static const Color textPrimaryDark = Color(0xFFFFFFFF); // White for dark mode text
  static const Color textSecondaryDark = Color(0xFFBDBDBD); // Light gray for dark mode secondary text

  // Background Colors
  static const Color backgroundLight = Color(0xFFF5F5F5); // Light gray background
  static const Color surfaceLight = Color(0xFFFFFFFF); // White surfaces
  static const Color backgroundDark = Color(0xFF1A1A1A); // Dark background placeholder
  static const Color surfaceDark = Color(0xFF2D2D2D); // Dark surface placeholder

  // Border Colors
  static const Color borderLight = Color(0xFFE0E0E0); // Light border
  static const Color borderDark = Color(0xFF424242); // Dark border
}
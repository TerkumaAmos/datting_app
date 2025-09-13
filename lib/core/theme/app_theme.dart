import 'package:datting_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      primaryContainer: AppColors.primaryDark,
      onPrimaryContainer: AppColors.white,
      secondary: AppColors.secondary,
      onSecondary: AppColors.white,
      secondaryContainer: AppColors.secondaryLight,
      onSecondaryContainer: AppColors.black,
      error: AppColors.error,
      onError: AppColors.white,
      background: AppColors.backgroundLight,
      onBackground: AppColors.textPrimaryLight,
      surface: AppColors.surfaceLight,
      onSurface: AppColors.textPrimaryLight,
      surfaceVariant: AppColors.lightGrey,
      outline: AppColors.borderLight,
    ),
    textTheme: TextTheme(
      displayLarge: AppTextStyles.withColor(AppTextStyles.displayLarge, AppColors.textPrimaryLight),
      displayMedium: AppTextStyles.withColor(AppTextStyles.displayMedium, AppColors.textPrimaryLight),
      displaySmall: AppTextStyles.withColor(AppTextStyles.displaySmall, AppColors.textPrimaryLight),
      headlineLarge: AppTextStyles.withColor(AppTextStyles.headlineLarge, AppColors.textPrimaryLight),
      headlineMedium: AppTextStyles.withColor(AppTextStyles.headlineMedium, AppColors.textPrimaryLight),
      headlineSmall: AppTextStyles.withColor(AppTextStyles.headlineSmall, AppColors.textPrimaryLight),
      titleLarge: AppTextStyles.withColor(AppTextStyles.titleLarge, AppColors.textPrimaryLight),
      titleMedium: AppTextStyles.withColor(AppTextStyles.titleMedium, AppColors.textPrimaryLight),
      titleSmall: AppTextStyles.withColor(AppTextStyles.titleSmall, AppColors.textPrimaryLight),
      bodyLarge: AppTextStyles.withColor(AppTextStyles.bodyLarge, AppColors.textPrimaryLight),
      bodyMedium: AppTextStyles.withColor(AppTextStyles.bodyMedium, AppColors.textPrimaryLight),
      bodySmall: AppTextStyles.withColor(AppTextStyles.bodySmall, AppColors.textPrimaryLight),
      labelLarge: AppTextStyles.withColor(AppTextStyles.labelLarge, AppColors.textPrimaryLight),
      labelMedium: AppTextStyles.withColor(AppTextStyles.labelMedium, AppColors.textPrimaryLight),
      labelSmall: AppTextStyles.withColor(AppTextStyles.labelSmall, AppColors.textPrimaryLight),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.borderLight, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.borderLight, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.error, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.error, width: 2),
      ),
      labelStyle: AppTextStyles.withColor(AppTextStyles.bodyMedium, AppColors.textSecondaryLight),
      hintStyle: AppTextStyles.withColor(AppTextStyles.bodyMedium, AppColors.textSecondaryLight),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.transparent,
      foregroundColor: AppColors.textPrimaryLight,
      surfaceTintColor: AppColors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.borderLight, width: 1),
      ),
      color: AppColors.transparent,
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryLight,
      onPrimary: AppColors.white,
      primaryContainer: AppColors.primary,
      onPrimaryContainer: AppColors.white,
      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.white,
      secondaryContainer: AppColors.secondary,
      onSecondaryContainer: AppColors.white,
      error: AppColors.error,
      onError: AppColors.white,
      background: AppColors.backgroundDark,
      onBackground: AppColors.textPrimaryDark,
      surface: AppColors.surfaceDark,
      onSurface: AppColors.textPrimaryDark,
      surfaceVariant: AppColors.darkGrey,
      outline: AppColors.borderDark,
    ),
    textTheme: TextTheme(
      displayLarge: AppTextStyles.withColor(AppTextStyles.displayLarge, AppColors.textPrimaryDark),
      displayMedium: AppTextStyles.withColor(AppTextStyles.displayMedium, AppColors.textPrimaryDark),
      displaySmall: AppTextStyles.withColor(AppTextStyles.displaySmall, AppColors.textPrimaryDark),
      headlineLarge: AppTextStyles.withColor(AppTextStyles.headlineLarge, AppColors.textPrimaryDark),
      headlineMedium: AppTextStyles.withColor(AppTextStyles.headlineMedium, AppColors.textPrimaryDark),
      headlineSmall: AppTextStyles.withColor(AppTextStyles.headlineSmall, AppColors.textPrimaryDark),
      titleLarge: AppTextStyles.withColor(AppTextStyles.titleLarge, AppColors.textPrimaryDark),
      titleMedium: AppTextStyles.withColor(AppTextStyles.titleMedium, AppColors.textPrimaryDark),
      titleSmall: AppTextStyles.withColor(AppTextStyles.titleSmall, AppColors.textPrimaryDark),
      bodyLarge: AppTextStyles.withColor(AppTextStyles.bodyLarge, AppColors.textPrimaryDark),
      bodyMedium: AppTextStyles.withColor(AppTextStyles.bodyMedium, AppColors.textPrimaryDark),
      bodySmall: AppTextStyles.withColor(AppTextStyles.bodySmall, AppColors.textPrimaryDark),
      labelLarge: AppTextStyles.withColor(AppTextStyles.labelLarge, AppColors.textPrimaryDark),
      labelMedium: AppTextStyles.withColor(AppTextStyles.labelMedium, AppColors.textPrimaryDark),
      labelSmall: AppTextStyles.withColor(AppTextStyles.labelSmall, AppColors.textPrimaryDark),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceDark,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.borderDark, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.borderDark, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primaryLight, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.error, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.error, width: 2),
      ),
      labelStyle: AppTextStyles.withColor(AppTextStyles.bodyMedium, AppColors.textSecondaryDark),
      hintStyle: AppTextStyles.withColor(AppTextStyles.bodyMedium, AppColors.textSecondaryDark),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surfaceDark,
      foregroundColor: AppColors.textPrimaryDark,
      surfaceTintColor: AppColors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    cardTheme: CardThemeData(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.borderDark, width: 1),
      ),
      color: AppColors.surfaceDark,
    ),
  );
}
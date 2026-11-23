import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_radius.dart';
import 'app_typography.dart';

abstract final class AppTheme {
  // =========================================================
  // DARK THEME
  // =========================================================

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,

      brightness: Brightness.dark,

      colorScheme: const ColorScheme.dark(
        // Primary
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,

        primaryContainer: AppColors.primaryContainer,
        onPrimaryContainer: AppColors.onPrimaryContainer,

        // Secondary
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,

        secondaryContainer: AppColors.secondaryContainer,
        onSecondaryContainer: AppColors.onSecondaryContainer,

        // Background / Surface
        surface: AppColors.surface,
        onSurface: AppColors.textPrimary,

        surfaceContainerLowest: AppColors.surfaceContainerLowest,

        surfaceContainerLow: AppColors.surfaceContainerLow,

        surfaceContainer: AppColors.surfaceContainer,

        surfaceContainerHigh: AppColors.surfaceContainerHigh,

        surfaceContainerHighest: AppColors.surfaceContainerHighest,

        // Outline
        outline: AppColors.outline,

        outlineVariant: AppColors.outlineVariant,

        // Error
        error: AppColors.error,

        onError: AppColors.onError,

        errorContainer: AppColors.errorContainer,

        onErrorContainer: AppColors.onErrorContainer,
      ),

      scaffoldBackgroundColor: AppColors.background,

      textTheme: _textTheme,

      // =====================================================
      // INPUT
      // =====================================================
      inputDecorationTheme: _inputDecorationTheme,

      // =====================================================
      // BUTTON
      // =====================================================
      elevatedButtonTheme: _elevatedButtonTheme,

      outlinedButtonTheme: _outlinedButtonTheme,

      textButtonTheme: _textButtonTheme,

      // =====================================================
      // CARD
      // =====================================================
      cardTheme: CardThemeData(
        elevation: 0,

        color: AppColors.surfaceContainer,

        margin: EdgeInsets.zero,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
        ),
      ),

      // =====================================================
      // DIVIDER
      // =====================================================
      dividerTheme: const DividerThemeData(
        color: AppColors.outlineVariant,
        thickness: 1,
        space: 1,
      ),

      // =====================================================
      // ICON
      // =====================================================
      iconTheme: const IconThemeData(color: AppColors.iconPrimary, size: 24),
    );
  }

  // =========================================================
  // LIGHT THEME
  // =========================================================

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      brightness: Brightness.light,

      colorScheme: const ColorScheme.light(
        primary: Color(0xFF006B57),
        onPrimary: Colors.white,

        primaryContainer: Color(0xFF9CF2DC),
        onPrimaryContainer: Color(0xFF002019),

        secondary: Color(0xFF4E635D),
        onSecondary: Colors.white,

        secondaryContainer: Color(0xFFD0E8E1),
        onSecondaryContainer: Color(0xFF0A1F1A),

        surface: Color(0xFFF7FAF8),
        onSurface: Color(0xFF171D1B),

        surfaceContainerLowest: Colors.white,
        surfaceContainerLow: Color(0xFFF1F5F3),
        surfaceContainer: Color(0xFFEAEFED),
        surfaceContainerHigh: Color(0xFFE4E9E7),
        surfaceContainerHighest: Color(0xFFDDE3E0),

        outline: Color(0xFF6F7975),
        outlineVariant: Color(0xFFBEC9C5),

        error: Color(0xFFBA1A1A),
        onError: Colors.white,

        errorContainer: Color(0xFFFFDAD6),
        onErrorContainer: Color(0xFF410002),
      ),

      scaffoldBackgroundColor: const Color(0xFFF7FAF8),

      textTheme: _textTheme,

      inputDecorationTheme: _lightInputDecorationTheme,

      elevatedButtonTheme: _lightElevatedButtonTheme,

      outlinedButtonTheme: _outlinedButtonTheme,

      textButtonTheme: _textButtonTheme,

      cardTheme: CardThemeData(
        elevation: 0,

        color: const Color(0xFFEAEFED),

        margin: EdgeInsets.zero,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
        ),
      ),
    );
  }

  // =========================================================
  // TEXT THEME
  // =========================================================

  static const TextTheme _textTheme = TextTheme(
    displayLarge: AppTypography.displayLarge,

    displayMedium: AppTypography.displayMedium,

    displaySmall: AppTypography.displaySmall,

    headlineLarge: AppTypography.headlineLarge,

    headlineMedium: AppTypography.headlineMedium,

    headlineSmall: AppTypography.headlineSmall,

    titleLarge: AppTypography.titleLarge,

    titleMedium: AppTypography.titleMedium,

    titleSmall: AppTypography.titleSmall,

    bodyLarge: AppTypography.bodyLarge,

    bodyMedium: AppTypography.bodyMedium,

    bodySmall: AppTypography.bodySmall,

    labelLarge: AppTypography.labelLarge,

    labelMedium: AppTypography.labelMedium,

    labelSmall: AppTypography.labelSmall,
  );

  // =========================================================
  // DARK INPUT
  // =========================================================

  static const InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
        filled: true,

        fillColor: AppColors.surfaceContainerHigh,

        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),

        hintStyle: TextStyle(fontSize: 14, color: AppColors.textTertiary),

        labelStyle: TextStyle(fontSize: 14, color: AppColors.textSecondary),

        prefixIconColor: AppColors.iconSecondary,

        suffixIconColor: AppColors.iconSecondary,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.md)),

          borderSide: BorderSide(color: AppColors.outlineVariant),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.md)),

          borderSide: BorderSide(color: AppColors.outlineVariant),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.md)),

          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.md)),

          borderSide: BorderSide(color: AppColors.error),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.md)),

          borderSide: BorderSide(color: AppColors.error, width: 2),
        ),
      );

  // =========================================================
  // LIGHT INPUT
  // =========================================================

  static const InputDecorationTheme _lightInputDecorationTheme =
      InputDecorationTheme(
        filled: true,

        fillColor: Color(0xFFEAEFED),

        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),

        hintStyle: TextStyle(fontSize: 14, color: Color(0xFF68736F)),

        labelStyle: TextStyle(fontSize: 14, color: Color(0xFF4F5A56)),

        prefixIconColor: Color(0xFF52605B),

        suffixIconColor: Color(0xFF52605B),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.md)),

          borderSide: BorderSide(color: Color(0xFFBEC9C5)),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.md)),

          borderSide: BorderSide(color: Color(0xFFBEC9C5)),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.md)),

          borderSide: BorderSide(color: Color(0xFF006B57), width: 2),
        ),
      );

  // =========================================================
  // DARK ELEVATED BUTTON
  // =========================================================

  static final ElevatedButtonThemeData _elevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,

          minimumSize: const Size(double.infinity, 52),

          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),

          backgroundColor: AppColors.primary,

          foregroundColor: AppColors.onPrimary,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg),
          ),

          textStyle: AppTypography.button,
        ),
      );

  // =========================================================
  // LIGHT ELEVATED BUTTON
  // =========================================================

  static final ElevatedButtonThemeData _lightElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,

          minimumSize: const Size(double.infinity, 52),

          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),

          backgroundColor: const Color(0xFF006B57),

          foregroundColor: Colors.white,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg),
          ),

          textStyle: AppTypography.button,
        ),
      );

  // =========================================================
  // OUTLINED BUTTON
  // =========================================================

  static final OutlinedButtonThemeData _outlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, 52),

          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),

          foregroundColor: AppColors.textPrimary,

          side: const BorderSide(color: AppColors.outline),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg),
          ),

          textStyle: AppTypography.button,
        ),
      );

  // =========================================================
  // TEXT BUTTON
  // =========================================================

  static final TextButtonThemeData _textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primary,

      textStyle: AppTypography.labelLarge,

      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    ),
  );
}

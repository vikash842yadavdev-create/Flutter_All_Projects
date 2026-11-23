import 'package:flutter/material.dart';

abstract final class AppColors {
  // =========================================================
  // BRAND COLORS
  // =========================================================

  /// Main brand / CTA color
  static const primary = Color(0xFF009C7F);

  /// Slightly brighter primary
  static const primaryLight = Color(0xFF18B395);

  /// Darker primary
  static const primaryDark = Color(0xFF007A65);

  /// Text/icon placed on primary
  static const onPrimary = Color(0xFFFFFFFF);

  // =========================================================
  // PRIMARY CONTAINER
  // =========================================================

  /// Dark teal container
  static const primaryContainer = Color(0xFF156959);

  /// Content placed on primaryContainer
  static const onPrimaryContainer = Color(0xFFD5FFF3);

  // =========================================================
  // SECONDARY
  // =========================================================

  /// Muted teal-green
  static const secondary = Color(0xFF6F9D92);

  static const secondaryLight = Color(0xFF8AB7AB);

  static const secondaryDark = Color(0xFF527A70);

  static const onSecondary = Color(0xFFFFFFFF);

  // =========================================================
  // SECONDARY CONTAINER
  // =========================================================

  static const secondaryContainer = Color(0xFF294A43);

  static const onSecondaryContainer = Color(0xFFD8ECE7);

  // =========================================================
  // BACKGROUND
  // =========================================================

  /// Main application background
  static const background = Color(0xFF153630);

  /// Even darker background
  static const backgroundDark = Color(0xFF102925);

  /// Slightly lighter background
  static const backgroundLight = Color(0xFF1A4038);

  // =========================================================
  // SURFACE
  // =========================================================

  /// Default surface
  static const surface = Color(0xFF1F332F);

  /// Dim surface
  static const surfaceDim = Color(0xFF172A26);

  /// Bright surface
  static const surfaceBright = Color(0xFF293331);

  // =========================================================
  // SURFACE CONTAINERS
  // =========================================================

  /// Lowest elevation
  static const surfaceContainerLowest = Color(0xFF122A25);

  /// Low elevation
  static const surfaceContainerLow = Color(0xFF1A302C);

  /// Normal container
  static const surfaceContainer = Color(0xFF1F332F);

  /// High elevation
  static const surfaceContainerHigh = Color(0xFF293331);

  /// Highest elevation
  static const surfaceContainerHighest = Color(0xFF33403D);

  // =========================================================
  // TEXT
  // =========================================================

  /// Main text
  static const textPrimary = Color(0xFFF2F7F5);

  /// Secondary text
  static const textSecondary = Color(0xFFB7C8C3);

  /// Less important text
  static const textTertiary = Color(0xFF8A9D97);

  /// Disabled text
  static const textDisabled = Color(0xFF61706C);

  // =========================================================
  // ICONS
  // =========================================================

  static const iconPrimary = Color(0xFFE3ECE9);

  static const iconSecondary = Color(0xFF9BAEA8);

  static const iconDisabled = Color(0xFF60706B);

  // =========================================================
  // OUTLINE / BORDER
  // =========================================================

  static const outline = Color(0xFF71837D);

  static const outlineVariant = Color(0xFF3C504A);

  static const border = Color(0xFF344A44);

  static const borderLight = Color(0xFF4B605A);

  // =========================================================
  // STATUS COLORS
  // =========================================================

  static const error = Color(0xFFFFB4AB);

  static const onError = Color(0xFF690005);

  static const errorContainer = Color(0xFF93000A);

  static const onErrorContainer = Color(0xFFFFDAD6);

  static const success = Color(0xFF86D6B5);

  static const warning = Color(0xFFFFD180);

  static const info = Color(0xFF9DD8D0);

  // =========================================================
  // BUTTON COLORS
  // =========================================================

  static const buttonPrimary = primary;

  static const buttonSecondary = primaryContainer;

  // =========================================================
  // GRADIENTS
  // =========================================================

  /// Main app background gradient
  static const backgroundGradient = LinearGradient(
    colors: [Color(0xFF102925), Color(0xFF153630), Color(0xFF1F332F)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Card gradient
  static const cardGradient = LinearGradient(
    colors: [Color(0xFF1F332F), Color(0xFF293331)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Main CTA gradient
  static const primaryGradient = LinearGradient(
    colors: [Color(0xFF00A98A), Color(0xFF009C7F), Color(0xFF156959)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Subtle teal gradient
  static const secondaryGradient = LinearGradient(
    colors: [Color(0xFF156959), Color(0xFF294A43)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

import 'package:kiss_color/kiss_color.dart';

import 'package:flutter/material.dart';

/// Chill theme with soft, calming colors
final chillColors = SemanticColorsData(
  primary: BaseColors(
    background: const Color(0xFF89B5AF), // Soft sage
    foreground: Colors.white,
    outline: const Color(0xFF96C7C1),
    shadow: const Color(0xFF89B5AF).withValues(alpha: 0.2),
  ),
  secondary: BaseColors(
    background: const Color(0xFFDED5C4), // Warm beige
    foreground: const Color(0xFF2D4356),
    outline: const Color(0xFFCEC3B2),
    shadow: const Color(0xFFDED5C4).withValues(alpha: 0.2),
  ),
  brand: BrandColors(
    primary: BaseColors(
      background: const Color(0xFFF9F5EB), // Cream
      foreground: const Color(0xFF2D4356),
      outline: const Color(0xFFE8E4DA),
      shadow: const Color(0xFFF9F5EB).withValues(alpha: 0.2),
    ),
    secondary: BaseColors(
      background: const Color(0xFF2D4356), // Deep blue-gray
      foreground: Colors.white,
      outline: const Color(0xFF435667),
      shadow: const Color(0xFF2D4356).withValues(alpha: 0.2),
    ),
  ),
  state: StateColors(
    success: BaseColors(
      background: const Color(0xFF9EC1A3), // Soft green
      foreground: Colors.white,
      outline: const Color(0xFFAFD1B3),
      shadow: const Color(0xFF9EC1A3).withValues(alpha: 0.2),
    ),
    error: BaseColors(
      background: const Color(0xFFE5B299), // Muted coral
      foreground: const Color(0xFF2D4356),
      outline: const Color(0xFFF3C3AA),
      shadow: const Color(0xFFE5B299).withValues(alpha: 0.2),
    ),
    warning: BaseColors(
      background: const Color(0xFFFFD9B7), // Soft peach
      foreground: const Color(0xFF2D4356),
      outline: const Color(0xFFFFE4C9),
      shadow: const Color(0xFFFFD9B7).withValues(alpha: 0.2),
    ),
    disabled: BaseColors(
      background: const Color(0xFFD3D3D3), // Light gray
      foreground: Colors.white70,
      outline: const Color(0xFFE0E0E0),
      shadow: const Color(0xFFD3D3D3).withValues(alpha: 0.2),
    ),
  ),
);

/// Light theme with crisp, clean colors
final lightColors = SemanticColorsData(
  primary: BaseColors(
    background: const Color(0xFF4A90E2), // Bright blue
    foreground: Colors.white,
    outline: const Color(0xFF5A9FE2),
    shadow: const Color(0xFF4A90E2).withValues(alpha: 0.2),
  ),
  secondary: BaseColors(
    background: const Color(0xFFF8F9FA), // Off white
    foreground: const Color(0xFF2C3E50),
    outline: const Color(0xFFE9ECEF),
    shadow: const Color(0xFFF8F9FA).withValues(alpha: 0.2),
  ),
  brand: BrandColors(
    primary: BaseColors(
      background: const Color(0xFF2C3E50), // Dark blue-gray
      foreground: Colors.white,
      outline: const Color(0xFF3D4F61),
      shadow: const Color(0xFF2C3E50).withValues(alpha: 0.2),
    ),
    secondary: BaseColors(
      background: const Color(0xFFE9ECEF), // Light gray
      foreground: const Color(0xFF2C3E50),
      outline: const Color(0xFFDEE2E6),
      shadow: const Color(0xFFE9ECEF).withValues(alpha: 0.2),
    ),
  ),
  state: StateColors(
    success: BaseColors(
      background: const Color(0xFF2ECC71), // Green
      foreground: Colors.white,
      outline: const Color(0xFF3EDD81),
      shadow: const Color(0xFF2ECC71).withValues(alpha: 0.2),
    ),
    error: BaseColors(
      background: const Color(0xFFE74C3C), // Red
      foreground: Colors.white,
      outline: const Color(0xFFF75C4C),
      shadow: const Color(0xFFE74C3C).withValues(alpha: 0.2),
    ),
    warning: BaseColors(
      background: const Color(0xFFF1C40F), // Yellow
      foreground: const Color(0xFF2C3E50),
      outline: const Color(0xFFF2D41F),
      shadow: const Color(0xFFF1C40F).withValues(alpha: 0.2),
    ),
    disabled: BaseColors(
      background: const Color(0xFFCED4DA), // Gray
      foreground: Colors.white,
      outline: const Color(0xFFDEE2E6),
      shadow: const Color(0xFFCED4DA).withValues(alpha: 0.2),
    ),
  ),
);

/// Dark theme with rich, deep colors
final darkColors = SemanticColorsData(
  primary: BaseColors(
    background: const Color(0xFF1A1B1E), // Near black
    foreground: Colors.white,
    outline: const Color(0xFF2A2B2E),
    shadow: const Color(0xFF1A1B1E).withValues(alpha: 0.2),
  ),
  secondary: BaseColors(
    background: const Color(0xFF2A2B2E), // Dark gray
    foreground: Colors.white,
    outline: const Color(0xFF3A3B3E),
    shadow: const Color(0xFF2A2B2E).withValues(alpha: 0.2),
  ),
  brand: BrandColors(
    primary: BaseColors(
      background: const Color(0xFF6366F1), // Indigo
      foreground: Colors.white,
      outline: const Color(0xFF7376F2),
      shadow: const Color(0xFF6366F1).withValues(alpha: 0.2),
    ),
    secondary: BaseColors(
      background: const Color(0xFF3A3B3E), // Medium gray
      foreground: Colors.white,
      outline: const Color(0xFF4A4B4E),
      shadow: const Color(0xFF3A3B3E).withValues(alpha: 0.2),
    ),
  ),
  state: StateColors(
    success: BaseColors(
      background: const Color(0xFF22C55E), // Green
      foreground: Colors.white,
      outline: const Color(0xFF32D56E),
      shadow: const Color(0xFF22C55E).withValues(alpha: 0.2),
    ),
    error: BaseColors(
      background: const Color(0xFFEF4444), // Red
      foreground: Colors.white,
      outline: const Color(0xFFF05454),
      shadow: const Color(0xFFEF4444).withValues(alpha: 0.2),
    ),
    warning: BaseColors(
      background: const Color(0xFFF59E0B), // Amber
      foreground: Colors.white,
      outline: const Color(0xFFF6AE1B),
      shadow: const Color(0xFFF59E0B).withValues(alpha: 0.2),
    ),
    disabled: BaseColors(
      background: const Color(0xFF4A4B4E), // Dark gray
      foreground: Colors.white,
      outline: const Color(0xFF5A5B5E),
      shadow: const Color(0xFF4A4B4E).withValues(alpha: 0.2),
    ),
  ),
);

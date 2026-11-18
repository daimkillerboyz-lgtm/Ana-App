import 'package:flutter/material.dart';

/// PrivateAgent design system — a premium "Slate" deep theme with indigo
/// accents, in both dark and light variants.
class AppTheme {
  AppTheme._();

  // Slate palette
  static const slate50 = Color(0xFFF5F9FF);
  static const slate100 = Color(0xFFEAF1FC);
  static const slate200 = Color(0xFFD6E3F5);
  static const slate300 = Color(0xFFB8CCE6);
  static const slate400 = Color(0xFF8FA7C7);
  static const slate500 = Color(0xFF65799A);
  static const slate600 = Color(0xFF485C7D);
  static const slate700 = Color(0xFF2F4166);
  static const slate800 = Color(0xFF1E2D4A);
  static const slate900 = Color(0xFF152138);
  static const slate950 = Color(0xFF0E1627);

  // Brand accents
  static const indigo = Color(0xFF3B82F6);
  static const indigoLight = Color(0xFF60A5FA);
  static const success = Color(0xFF22C55E);
  static const danger = Color(0xFFEF4444);
  static const warning = Color(0xFFF59E0B);

  static ThemeData dark() {
    final scheme = ColorScheme.fromSeed(
      seedColor: indigo,
      brightness: Brightness.dark,
      surface: slate900,
    ).copyWith(
      primary: indigoLight,
      onPrimary: const Color(0xFF06182E),
      surface: slate900,
      surfaceContainerHighest: slate800,
      onSurface: slate100,
      onSurfaceVariant: slate400,
      outline: slate700,
    );
    return _base(scheme).copyWith(
      scaffoldBackgroundColor: slate950,
      cardColor: slate900,
    );
  }

  static ThemeData light() {
    final scheme = ColorScheme.fromSeed(
      seedColor: indigo,
      brightness: Brightness.light,
      surface: slate50,
    ).copyWith(
      primary: const Color(0xFF2563EB),
      surface: slate50,
      surfaceContainerHighest: Colors.white,
      onSurface: slate900,
      onSurfaceVariant: slate600,
      outline: slate300,
    );
    return _base(scheme).copyWith(
      scaffoldBackgroundColor: slate50,
      cardColor: Colors.white,
    );
  }

  static ThemeData _base(ColorScheme scheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: scheme.onSurface,
        titleTextStyle: TextStyle(
          color: scheme.onSurface,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.3,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: scheme.outline.withValues(alpha: 0.4)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: scheme.surfaceContainerHighest,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: scheme.outline.withValues(alpha: 0.5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: scheme.primary, width: 1.6),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        ),
      ),
      chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(color: scheme.outline.withValues(alpha: 0.5)),
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      dividerTheme: DividerThemeData(
        color: scheme.outline.withValues(alpha: 0.4),
        thickness: 1,
      ),
    );
  }
}

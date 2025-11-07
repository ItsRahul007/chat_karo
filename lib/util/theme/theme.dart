import 'package:chat_karo/util/theme/colors.dart';
import 'package:flutter/material.dart';

class MyTheme {
  MyTheme._();

  static final darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: DarkThemeColors.backgroundColor,
    brightness: Brightness.dark,
    primaryColor: DarkThemeColors.primaryGreen,
    colorScheme: ColorScheme.dark(
      primary: DarkThemeColors.primaryGreen,
      onPrimary: DarkThemeColors.lightBackground,
      secondary: DarkThemeColors.secondaryGreen,
      onSecondary: DarkThemeColors.lightBackground,
      surface: DarkThemeColors.backgroundColor,
      onSurface: DarkThemeColors.primaryText,
      error: DarkThemeColors.errorColor,
      onError: DarkThemeColors.lightBackground,
      onTertiary: Colors.grey.shade800,
      tertiary: DarkThemeColors.lightBackground,
    ),
    textTheme: _darkModeTextTheme,
    chipTheme: _darkChipTheme,
    iconTheme: _darkIconTheme,
    listTileTheme: _darkListTileTheme,
    appBarTheme: _darkAppBarTheme,
    elevatedButtonTheme: _darkElevatedButtonTheme,
    inputDecorationTheme: _darkInputDecorationTheme,
  );

  static final lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: LightThemeColors.lightBackground,
    brightness: Brightness.light,
    primaryColor: LightThemeColors.primaryGreen,
    colorScheme: ColorScheme.light(
      primary: LightThemeColors.primaryGreen,
      onPrimary: LightThemeColors.surfaceWhite,
      secondary: LightThemeColors
          .secondaryGreen, // Using the primary green for secondary accents
      onSecondary: LightThemeColors.surfaceWhite,
      surface: LightThemeColors.lightBackground,
      onSurface: LightThemeColors.primaryText,
      error: LightThemeColors.errorColor,
      onError: LightThemeColors.surfaceWhite,
      onTertiary: Colors.grey.shade100,
      tertiary: LightThemeColors.inputBgColor,
    ),

    textTheme: _lightModeTextTheme,

    listTileTheme: _lightListTileTheme,

    // AppBar Theme: Clean and minimal
    appBarTheme: _lightAppBarTheme,

    // Input Decoration Theme: Rounded search bar and text fields
    inputDecorationTheme: _lightInputDecorationTheme,

    // Elevated Button Theme: Rounded corners and green accent for 'Start Chat'
    elevatedButtonTheme: _lightElevatedButtonTheme,

    // Chip Theme: Rounded corners for 'All', 'Contacts', 'Finance'
    chipTheme: _lightChipTheme,

    // Icon Theme
    iconTheme: _lightIconTheme,
  );

  static final InputDecorationTheme _lightInputDecorationTheme =
      InputDecorationTheme(
        filled: true,
        fillColor: LightThemeColors
            .lightBackground, // A slightly darker background for input field
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            30.0,
          ), // Highly rounded corners (Pill shape for search)
          borderSide: BorderSide.none, // No visible border
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: LightThemeColors.primaryGreen,
            width: 1.5,
          ),
        ),
        hintStyle: TextStyle(
          color: LightThemeColors.secondaryText.withOpacity(0.7),
        ),
      );

  static final InputDecorationTheme _darkInputDecorationTheme =
      _lightInputDecorationTheme.copyWith(
        filled: true,
        fillColor: DarkThemeColors
            .lightBackground, // A slightly darker background for input field
      );

  static final ElevatedButtonThemeData _lightElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: LightThemeColors.primaryGreen,
          foregroundColor: LightThemeColors.surfaceWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Rounded pill shape
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );

  static final ElevatedButtonThemeData _darkElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: DarkThemeColors.primaryGreen,
          foregroundColor: DarkThemeColors.lightBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Rounded pill shape
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );

  static final AppBarTheme _lightAppBarTheme = const AppBarTheme(
    backgroundColor: LightThemeColors.surfaceWhite,
    foregroundColor: LightThemeColors.primaryText,
    elevation: 0, // Flat design
    centerTitle: false,
    toolbarHeight: 60,
    iconTheme: IconThemeData(color: LightThemeColors.primaryText),
    titleTextStyle: TextStyle(
      color: LightThemeColors.primaryText,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    actionsIconTheme: IconThemeData(
      color: LightThemeColors.primaryText,
      size: 28,
    ),
  );

  static final AppBarTheme _darkAppBarTheme = _lightAppBarTheme.copyWith(
    backgroundColor: DarkThemeColors.backgroundColor,
    foregroundColor: DarkThemeColors.primaryText,
    iconTheme: _lightAppBarTheme.iconTheme?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
    titleTextStyle: _lightAppBarTheme.titleTextStyle?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
    actionsIconTheme: _lightAppBarTheme.actionsIconTheme?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
  );

  static final ListTileThemeData _lightListTileTheme = ListTileThemeData(
    tileColor: LightThemeColors.lightBackground,
    textColor: LightThemeColors.primaryText,
    iconColor: LightThemeColors.primaryGreen,
    minVerticalPadding: 5,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    subtitleTextStyle: TextStyle(
      color: LightThemeColors.primaryText.withOpacity(0.8),
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    leadingAndTrailingTextStyle: TextStyle(
      color: LightThemeColors.primaryText,
      fontSize: 13,
      fontWeight: FontWeight.w500,
    ),
    titleTextStyle: TextStyle(
      color: LightThemeColors.primaryText,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  );

  static final ListTileThemeData _darkListTileTheme = _lightListTileTheme
      .copyWith(
        tileColor: DarkThemeColors.backgroundColor,
        textColor: DarkThemeColors.primaryText,
        iconColor: DarkThemeColors.primaryGreen,
        subtitleTextStyle: _lightListTileTheme.subtitleTextStyle?.copyWith(
          color: DarkThemeColors.primaryText.withOpacity(0.8),
        ),
        leadingAndTrailingTextStyle: _lightListTileTheme
            .leadingAndTrailingTextStyle
            ?.copyWith(color: DarkThemeColors.primaryText),
        titleTextStyle: _lightListTileTheme.titleTextStyle?.copyWith(
          color: DarkThemeColors.primaryText,
        ),
      );

  static final ChipThemeData _lightChipTheme = ChipThemeData(
    backgroundColor: LightThemeColors.lightBackground,
    selectedColor: LightThemeColors.primaryGreen,
    labelStyle: const TextStyle(
      color: LightThemeColors.primaryText,
      fontWeight: FontWeight.w500,
    ),
    secondaryLabelStyle: const TextStyle(
      color: LightThemeColors.surfaceWhite,
      fontWeight: FontWeight.w500,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0), // Highly rounded
    ),
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
  );

  static final ChipThemeData _darkChipTheme = _lightChipTheme.copyWith(
    backgroundColor: DarkThemeColors.lightBackground,
    selectedColor: DarkThemeColors.primaryGreen,
    labelStyle: _lightChipTheme.labelStyle?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
    secondaryLabelStyle: _lightChipTheme.secondaryLabelStyle?.copyWith(
      color: DarkThemeColors.lightBackground,
    ),
  );

  static final IconThemeData _lightIconTheme = IconThemeData(
    color: LightThemeColors.primaryText,
  );

  static final IconThemeData _darkIconTheme = _lightIconTheme.copyWith(
    color: DarkThemeColors.primaryText,
  );

  static final TextTheme _lightModeTextTheme = TextTheme(
    displayLarge: TextStyle(color: LightThemeColors.primaryText),
    displayMedium: TextStyle(color: LightThemeColors.primaryText),
    displaySmall: TextStyle(color: LightThemeColors.primaryText),
    headlineLarge: TextStyle(
      color: LightThemeColors.primaryText,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: LightThemeColors.primaryText,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(color: LightThemeColors.primaryText),
    titleLarge: TextStyle(
      color: LightThemeColors.primaryText,
      fontWeight: FontWeight.w600,
    ), // Used for names in chat list
    titleMedium: TextStyle(
      color: LightThemeColors.primaryText,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ), // Default title text
    titleSmall: TextStyle(
      color: LightThemeColors.secondaryText,
      fontSize: 14,
    ), // Time stamps/Status
    bodyLarge: TextStyle(
      color: LightThemeColors.primaryText,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ), // Main body text
    bodyMedium: TextStyle(color: LightThemeColors.secondaryText, fontSize: 16),
    bodySmall: TextStyle(
      color: LightThemeColors.primaryText,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    labelLarge: TextStyle(
      color: LightThemeColors.primaryText,
      fontWeight: FontWeight.w600,
    ), // Button text
    labelMedium: TextStyle(color: LightThemeColors.secondaryText),
    labelSmall: TextStyle(color: LightThemeColors.secondaryText),
  );

  static final TextTheme _darkModeTextTheme = _lightModeTextTheme.copyWith(
    displayLarge: TextStyle(color: DarkThemeColors.primaryText),
    displayMedium: TextStyle(color: DarkThemeColors.primaryText),
    displaySmall: TextStyle(color: DarkThemeColors.primaryText),
    headlineLarge: _lightModeTextTheme.headlineLarge?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
    headlineMedium: _lightModeTextTheme.headlineMedium?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
    headlineSmall: _lightModeTextTheme.headlineSmall?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
    titleLarge: _lightModeTextTheme.titleLarge?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
    titleMedium: _lightModeTextTheme.titleMedium?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
    titleSmall: _lightModeTextTheme.titleSmall?.copyWith(
      color: DarkThemeColors.secondaryText,
    ),
    bodyLarge: _lightModeTextTheme.bodyLarge?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
    bodyMedium: _lightModeTextTheme.bodyMedium?.copyWith(
      color: DarkThemeColors.secondaryText,
    ),
    bodySmall: _lightModeTextTheme.bodySmall?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
    labelLarge: _lightModeTextTheme.labelLarge?.copyWith(
      color: DarkThemeColors.primaryText,
    ),
    labelMedium: _lightModeTextTheme.labelMedium?.copyWith(
      color: DarkThemeColors.secondaryText,
    ),
    labelSmall: _lightModeTextTheme.labelSmall?.copyWith(
      color: DarkThemeColors.secondaryText,
    ),
  );
}

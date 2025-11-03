import 'package:chat_karo/util/theme/colors.dart';
import 'package:flutter/material.dart';

class MyTheme {
  MyTheme._();

  static final lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: MyColors.lightBackground,
    brightness: Brightness.light,
    primaryColor: MyColors.primaryGreen,
    colorScheme: ColorScheme.light(
      primary: MyColors.primaryGreen,
      onPrimary: MyColors.surfaceWhite,
      secondary: MyColors
          .secondaryGreen, // Using the primary green for secondary accents
      onSecondary: MyColors.surfaceWhite,
      surface: MyColors.lightBackground,
      onSurface: MyColors.primaryText,
      error: MyColors.errorColor,
      onError: MyColors.surfaceWhite,
      onTertiary: Colors.grey.shade100,
    ),

    textTheme: _lightModeTextTheme,

    listTileTheme: ListTileThemeData(
      tileColor: MyColors.lightBackground,
      textColor: MyColors.primaryText,
      iconColor: MyColors.primaryGreen,
      minVerticalPadding: 5,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      subtitleTextStyle: TextStyle(
        color: MyColors.primaryText.withOpacity(0.8),
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      leadingAndTrailingTextStyle: TextStyle(
        color: MyColors.primaryText,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      titleTextStyle: TextStyle(
        color: MyColors.primaryText,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),

    // AppBar Theme: Clean and minimal
    appBarTheme: const AppBarTheme(
      backgroundColor: MyColors.surfaceWhite,
      foregroundColor: MyColors.primaryText,
      elevation: 0, // Flat design
      centerTitle: false,
      iconTheme: IconThemeData(color: MyColors.primaryText),
      titleTextStyle: TextStyle(
        color: MyColors.primaryText,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      actionsIconTheme: IconThemeData(color: MyColors.primaryText, size: 28),
    ),

    // Input Decoration Theme: Rounded search bar and text fields
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: MyColors
          .lightBackground, // A slightly darker background for input field
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          30.0,
        ), // Highly rounded corners (Pill shape for search)
        borderSide: BorderSide.none, // No visible border
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(color: MyColors.primaryGreen, width: 1.5),
      ),
      hintStyle: TextStyle(color: MyColors.secondaryText.withOpacity(0.7)),
    ),

    // Elevated Button Theme: Rounded corners and green accent for 'Start Chat'
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primaryGreen,
        foregroundColor: MyColors.surfaceWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0), // Rounded pill shape
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),

    // Chip Theme: Rounded corners for 'All', 'Contacts', 'Finance'
    chipTheme: ChipThemeData(
      backgroundColor: MyColors.lightBackground,
      selectedColor: MyColors.primaryGreen,
      labelStyle: const TextStyle(
        color: MyColors.primaryText,
        fontWeight: FontWeight.w500,
      ),
      secondaryLabelStyle: const TextStyle(
        color: MyColors.surfaceWhite,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Highly rounded
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      color: MyColors.primaryText, // Default icon color (e.g., search icon)
    ),
  );

  static final TextTheme _lightModeTextTheme = TextTheme(
    displayLarge: TextStyle(color: MyColors.primaryText),
    displayMedium: TextStyle(color: MyColors.primaryText),
    displaySmall: TextStyle(color: MyColors.primaryText),
    headlineLarge: TextStyle(
      color: MyColors.primaryText,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: MyColors.primaryText,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(color: MyColors.primaryText),
    titleLarge: TextStyle(
      color: MyColors.primaryText,
      fontWeight: FontWeight.w600,
    ), // Used for names in chat list
    titleMedium: TextStyle(
      color: MyColors.primaryText,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ), // Default title text
    titleSmall: TextStyle(
      color: MyColors.secondaryText,
      fontSize: 14,
    ), // Time stamps/Status
    bodyLarge: TextStyle(
      color: MyColors.primaryText,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ), // Main body text
    bodyMedium: TextStyle(color: MyColors.secondaryText, fontSize: 16),
    bodySmall: TextStyle(
      color: MyColors.primaryText,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    labelLarge: TextStyle(
      color: MyColors.primaryText,
      fontWeight: FontWeight.w600,
    ), // Button text
    labelMedium: TextStyle(color: MyColors.secondaryText),
    labelSmall: TextStyle(color: MyColors.secondaryText),
  );
}

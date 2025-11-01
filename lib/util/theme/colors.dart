import 'package:flutter/material.dart';

class MyColors {
  MyColors._();

  // Define the custom colors based on the image
  static const Color primaryGreen = Color(
    0xFF8BC34A,
  ); // A bright, slightly desaturated green
  static const Color secondaryGreen = Color(
    0xFFE6FFC9,
  ); // Very light background green for chat bubbles
  static const Color primaryText = Color(0xFF202020);
  static const Color secondaryText = Color(0xFF8A8A8A);
  static const Color lightBackground = Color.fromARGB(
    255,
    241,
    240,
    234,
  ); // Main background
  static const Color surfaceWhite = Color.fromARGB(
    193,
    219,
    234,
    142,
  ); // Card/Sheet background

  // Error color
  static const Color errorColor = Color(0xFFB00020);
}

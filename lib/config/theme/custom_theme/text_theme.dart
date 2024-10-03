import 'package:blott/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  //Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: AppColor.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColor.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.black,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColor.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColor.black,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColor.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.black,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColor.black,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColor.black,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 8,
      fontWeight: FontWeight.w400,
      color: AppColor.black,
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 6,
      fontWeight: FontWeight.w400,
      color: AppColor.black,
    ),
  );

  // Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: AppColor.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColor.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.white,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 8,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 6,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
  );
}

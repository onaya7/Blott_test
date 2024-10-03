import 'dart:io';

import 'package:blott/core/constants/app_color.dart';
import 'package:blott/core/constants/keys.dart';
import 'package:blott/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:toastification/toastification.dart';
import 'package:uuid/uuid.dart';

class UiHelpers {
  //UI helper functions---------------------------------------------------------
  static void showToast(String status, String message) {
    final context = Keys.navigatorKey.currentContext!;

    final statusToToastType = {
      'success': ToastificationType.success,
      'error': ToastificationType.error,
      'info': ToastificationType.info,
      'warning': ToastificationType.warning,
    };

    final statusToIcon = {
      'success': const Icon(
        Icons.check_circle_outline,
        color: AppColor.successBorder,
      ),
      'error': const Icon(
        Icons.error_outline,
        color: AppColor.errorBorder,
      ),
      'info': const Icon(
        Icons.info_outline,
        color: AppColor.infoBorder,
      ),
      'warning': const Icon(
        Icons.warning_amber_outlined,
        color: AppColor.warningBorder,
      ),
    };

    final toastType = statusToToastType[status];
    final icon = statusToIcon[status];
    if (toastType != null) {
      toastification.show(
        context: context,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        type: toastType,
        style: ToastificationStyle.flatColored,
        title: Text(
          message,
          style: const TextStyle(
            color: AppColor.black,
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
        alignment: Alignment.topCenter,
        autoCloseDuration: const Duration(seconds: 3),
        showProgressBar: false,
        dragToClose: true,
        icon: icon,
      );
    }
  }

  //Unfocus --------------------------------------------------------------------
  static void unfocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  //CloseKeyboard --------------------------------------------------------------

  static void closeKeyboard(BuildContext context) {
    if (FocusScope.of(context).hasPrimaryFocus ||
        FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  //Navigator helper functions -------------------------------------------------

  static dynamic navigateToPage(String routeName, {Object? arguments}) {
    logger.i(
      ':::::::::::::::::::::::::::Navigating to $routeName::::::::::::::::::::',
    );
    Keys.navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  static void popPage() {
    Keys.navigatorKey.currentState!.pop();
  }

  static dynamic navigateToPageAndReplace(
    String routeName, {
    Object? arguments,
  }) {
    logger.i(
      ':::::::::::::::::::::::::::Navigating to $routeName::::::::::::::::::::',
    );
    Keys.navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  static dynamic navigateToPageAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    logger.i(
      ':::::::::::::::::::::::::::Navigating to $routeName::::::::::::::::::::',
    );
    Keys.navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

//isDarkMode -------------------------------------------------------------------
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

//Shift focus functions --------------------------------------------------------
  static void shiftFocus(
    BuildContext context,
    FocusNode? currentFocus,
    FocusNode? nextFocus,
  ) {
    if (nextFocus != null) {
      currentFocus?.unfocus();
      FocusScope.of(context).requestFocus(nextFocus);
    } else {
      currentFocus?.unfocus();
    }
  }

  //Date Picker  ---------------------------------------------------------------
  static Future<DateTime?> datePicker(BuildContext context) async {
    DateTime? selectedDate;

    if (Platform.isAndroid || Platform.isIOS) {
      selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
      );
    } else if (Platform.isFuchsia || Platform.isLinux || Platform.isWindows) {
      final selectedDateRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
      );

      if (selectedDateRange != null) {
        selectedDate = selectedDateRange.start;
      }
    }

    return selectedDate;
  }

  //Time Picker  ---------------------------------------------------------------
  static Future<TimeOfDay?> timePicker(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    return selectedTime;
  }

  //Capitalize first letter ----------------------------------------------------
  static String capitalizeFirstLetter(String name) {
    if (name.isEmpty) {
      return name;
    }
    return name.split(' ').map((word) {
      final firstLetter = word.isNotEmpty ? word[0].toUpperCase() : '';
      final remainingLetters =
          word.length > 1 ? word.substring(1).toLowerCase() : '';
      return firstLetter + remainingLetters;
    }).join(' ');
  }

  // Generate unique Id --------------------------------------------------------
  static String generateUniqueId() {
    const uuid = Uuid();
    return uuid.v1();
  }

  //Haptic Feedback  -----------------------------------------------------------
  static void hapticFeedback(FeedbackType type) {
    Vibrate.feedback(type);
  }
}

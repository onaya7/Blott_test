import 'package:blott/config/navigators/routes_manager.dart';
import 'package:blott/config/navigators/undefined_route.dart';
import 'package:blott/features/auth/presentation/view/notification_view.dart';
import 'package:blott/features/auth/presentation/view/onboarding_view.dart';
import 'package:blott/features/auth/presentation/view/splash_view.dart';
import 'package:blott/features/home/presentation/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RoutesGenerator {
  RoutesGenerator._();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      //Auth--------------------------------------------------------------------
      case RoutesManager.splashRoute:
        return PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 300),
          child: const SplashView(),
        );

      case RoutesManager.onboardingRoute:
        return PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 300),
          child: const OnboardingView(),
        );

      case RoutesManager.notificationRoute:
        return PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 300),
          child: const NotificationView(),
        );

      case RoutesManager.dashboardRoute:
        return PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 300),
          child: const DashboardView(),
        );

      //Default
      default:
        return MaterialPageRoute(builder: (context) => const UndefinedRoute());
    }
  }
}

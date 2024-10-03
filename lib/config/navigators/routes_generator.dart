import 'package:blott/config/navigators/routes_manager.dart';
import 'package:blott/config/navigators/undefined_route.dart';
import 'package:blott/features/auth/presentation/view/splash_view.dart';
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

      //Home--------------------------------------------------------------------

      //Default
      default:
        return MaterialPageRoute(builder: (context) => const UndefinedRoute());
    }
  }
}

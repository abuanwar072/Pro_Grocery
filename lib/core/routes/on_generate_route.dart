import 'package:flutter/cupertino.dart';
import 'package:grocery/views/auth/intro_login_page.dart';
import 'package:grocery/views/entrypoint/entrypoint_ui.dart';
import 'package:grocery/views/onboarding/onboarding_page.dart';

import 'app_routes.dart';
import 'unknown_page.dart';

class RouteGenerator {
  static Route? onGenerate(RouteSettings settings) {
    final route = settings.name;
    final args = settings.arguments;

    switch (route) {
      case AppRoutes.introLogin:
        return CupertinoPageRoute(builder: (_) => const IntroLoginPage());

      case AppRoutes.onboarding:
        return CupertinoPageRoute(builder: (_) => const OnboardingPage());

      case AppRoutes.entryPoint:
        return CupertinoPageRoute(builder: (_) => const EntryPointUI());

      default:
    }
    return null;
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}

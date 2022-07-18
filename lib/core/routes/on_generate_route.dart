import 'package:flutter/cupertino.dart';
import 'package:grocery/views/home/bundle_create_page.dart';
import 'package:grocery/views/home/bundle_product_details_page.dart';

import '../../views/auth/forget_password_page.dart';
import '../../views/auth/intro_login_page.dart';
import '../../views/auth/login_or_signup_page.dart';
import '../../views/auth/login_page.dart';
import '../../views/auth/number_verification_page.dart';
import '../../views/auth/password_reset_page.dart';
import '../../views/auth/sign_up_page.dart';
import '../../views/entrypoint/entrypoint_ui.dart';
import '../../views/home/bundle_details_page.dart';
import '../../views/home/new_item_page.dart';
import '../../views/home/popular_pack_page.dart';
import '../../views/home/product_details_page.dart';
import '../../views/onboarding/onboarding_page.dart';
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

      case AppRoutes.login:
        return CupertinoPageRoute(builder: (_) => const LoginPage());

      case AppRoutes.signup:
        return CupertinoPageRoute(builder: (_) => const SignUpPage());

      case AppRoutes.loginOrSignup:
        return CupertinoPageRoute(builder: (_) => const LoginOrSignUpPage());

      case AppRoutes.numberVerification:
        return CupertinoPageRoute(
            builder: (_) => const NumberVerificationPage());

      case AppRoutes.forgotPassword:
        return CupertinoPageRoute(builder: (_) => const ForgetPasswordPage());

      case AppRoutes.passwordReset:
        return CupertinoPageRoute(builder: (_) => const PasswordResetPage());

      case AppRoutes.newItems:
        return CupertinoPageRoute(builder: (_) => const NewItemsPage());

      case AppRoutes.popularItems:
        return CupertinoPageRoute(builder: (_) => const PopularPackPage());

      case AppRoutes.bundleProduct:
        return CupertinoPageRoute(
            builder: (_) => const BundleProductDetailsPage());

      case AppRoutes.bundleDetailsPage:
        return CupertinoPageRoute(builder: (_) => const BundleDetailsPage());

      case AppRoutes.productDetails:
        return CupertinoPageRoute(builder: (_) => const ProductDetailsPage());

      case AppRoutes.createMyPack:
        return CupertinoPageRoute(builder: (_) => const BundleCreatePage());

      default:
    }
    return null;
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}

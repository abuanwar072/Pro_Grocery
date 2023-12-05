import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery/core/constants/app_icons.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_defaults.dart';
import '../cart/cart_page.dart';
import '../home/home_page.dart';
import '../menu/menu_page.dart';
import '../profile/profile_page.dart';
import '../save/save_page.dart';
import 'components/app_navigation_bar.dart';

/// This page will contain all the bottom navigation tabs
class EntryPointUI extends StatefulWidget {
  const EntryPointUI({Key? key}) : super(key: key);

  @override
  State<EntryPointUI> createState() => _EntryPointUIState();
}

class _EntryPointUIState extends State<EntryPointUI> {
  /// Current Page
  int currentIndex = 0;

  /// On labelLarge navigation tap
  void onBottomNavigationTap(int index) {
    currentIndex = index;
    setState(() {});
  }

  /// All the pages
  List<Widget> pages = [
    const HomePage(),
    const MenuPage(),
    const CartPage(isHomePage: true),
    const SavePage(isHomePage: false),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
          return SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.horizontal,
            fillColor: AppColors.scaffoldBackground,
            child: child,
          );
        },
        duration: AppDefaults.duration,
        child: pages[currentIndex],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onBottomNavigationTap(2);
        },
        backgroundColor: AppColors.primary,
        child: SvgPicture.asset(AppIcons.cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: currentIndex,
        onNavTap: onBottomNavigationTap,
      ),
    );
  }
}

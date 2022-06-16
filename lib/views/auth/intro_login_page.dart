import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import 'components/intro_page_background_wrapper.dart';
import 'components/intro_page_body_area.dart';

class IntroLoginPage extends StatefulWidget {
  const IntroLoginPage({Key? key}) : super(key: key);

  @override
  State<IntroLoginPage> createState() => _IntroLoginPageState();
}

class _IntroLoginPageState extends State<IntroLoginPage> {
  List introLoginPages = [
    AppImages.introBackground1,
    AppImages.introBackground2,
  ];

  late PageController _controller;

  /// Current Page
  int _currentPage = 0;
  bool isPageEnd = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage == introLoginPages.length - 1) {
        isPageEnd = true;
      } else if (_currentPage == 0) {
        isPageEnd = false;
      }

      if (isPageEnd == false) {
        _currentPage++;
      } else {
        _currentPage--;
      }

      _controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollBehavior: const MaterialScrollBehavior(),
            controller: _controller,
            itemCount: introLoginPages.length,
            itemBuilder: (context, index) {
              return IntroLoginBackgroundWrapper(
                imageURL: introLoginPages[index],
              );
            },
          ),
          const IntroPageBodyArea(),
        ],
      ),
    );
  }
}

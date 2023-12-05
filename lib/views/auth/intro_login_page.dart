import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import 'components/intro_page_background_wrapper.dart';
import 'components/intro_page_body_area.dart';

class IntroLoginPage extends StatelessWidget {
  const IntroLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          IntroLoginBackgroundWrapper(imageURL: AppImages.introBackground1),
          IntroPageBodyArea(),
        ],
      ),
    );
  }
}

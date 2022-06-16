import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../core/constants/constants.dart';
import 'components/onboarding_view.dart';
import 'data/onboarding_data.dart';
import 'data/onboarding_model.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  late PageController controller;
  List<OnboardingModel> items = OnboardingData.items;

  onForwardTap() {
    if (currentPage != items.length - 1) {
      controller.animateToPage(
        currentPage + 1,
        duration: AppDefaults.duration,
        curve: Curves.easeIn,
      );
    } else {
      /// navigate to the next page
    }
  }

  double circularProgressValue = 0.0;

  onPageChange(int value) {
    currentPage = value;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: PageView.builder(
                onPageChanged: onPageChange,
                itemCount: items.length,
                controller: controller,
                itemBuilder: (context, index) {
                  return OnboardingView(
                    data: items[index],
                  );
                },
              ),
            ),
            const Spacer(),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularStepProgressIndicator(
                    totalSteps: items.length,
                    currentStep: currentPage + 1,
                    selectedColor: AppColors.primary,
                    unselectedColor: AppColors.cardColor,
                    padding: 0,
                  ),
                ),
                ElevatedButton(
                  onPressed: onForwardTap,
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    elevation: 1,
                    padding: const EdgeInsets.all(AppDefaults.padding),
                  ),
                  child: SvgPicture.asset(
                    AppIcons.arrowForward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

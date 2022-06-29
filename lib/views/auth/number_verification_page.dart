import 'package:flutter/material.dart';
import '../../core/components/network_image.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_defaults.dart';
import '../../core/constants/app_images.dart';
import 'dialogs/verified_dialogs.dart';

class NumberVerificationPage extends StatelessWidget {
  const NumberVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldWithBoxBackground,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppDefaults.padding),
                  margin: const EdgeInsets.all(AppDefaults.margin),
                  decoration: BoxDecoration(
                    color: AppColors.scaffoldBackground,
                    borderRadius: AppDefaults.borderRadius,
                  ),
                  child: Column(
                    children: const [
                      NumberVerificationHeader(),
                      OTPTextFields(),
                      SizedBox(height: AppDefaults.padding * 3),
                      ResendButton(),
                      SizedBox(height: AppDefaults.padding),
                      VerifyButton(),
                      SizedBox(height: AppDefaults.padding),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VerifyButton extends StatelessWidget {
  const VerifyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          showGeneralDialog(
            barrierLabel: 'Dialog',
            barrierDismissible: true,
            context: context,
            pageBuilder: (ctx, anim1, anim2) => const VerifiedDialog(),
            transitionBuilder: (ctx, anim1, anim2, child) => ScaleTransition(
              scale: anim1,
              child: child,
            ),
          );
        },
        child: const Text('Verify'),
      ),
    );
  }
}

class ResendButton extends StatelessWidget {
  const ResendButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Did you don\'t get code?'),
        TextButton(
          onPressed: () {},
          child: const Text('Resend'),
        ),
      ],
    );
  }
}

class NumberVerificationHeader extends StatelessWidget {
  const NumberVerificationHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppDefaults.padding),
        Text(
          'Entry Your 4 digit code',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: AppDefaults.padding),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: const AspectRatio(
            aspectRatio: 1 / 1,
            child: NetworkImageWithLoader(
              AppImages.numberVerfication,
            ),
          ),
        ),
        const SizedBox(height: AppDefaults.padding * 3),
      ],
    );
  }
}

/// TODO: Make it more polished
class OTPTextFields extends StatelessWidget {
  const OTPTextFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: TextField()),
        SizedBox(width: AppDefaults.padding),
        Expanded(child: TextField()),
        SizedBox(width: AppDefaults.padding),
        Expanded(child: TextField()),
        SizedBox(width: AppDefaults.padding),
        Expanded(child: TextField()),
      ],
    );
  }
}

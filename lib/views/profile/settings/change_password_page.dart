import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/components/app_back_button.dart';
import '../../../core/constants/constants.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text(
          'Change Password Page',
        ),
      ),
      backgroundColor: AppColors.cardColor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(AppDefaults.padding),
            padding: const EdgeInsets.symmetric(
              horizontal: AppDefaults.padding,
              vertical: AppDefaults.padding * 2,
            ),
            decoration: BoxDecoration(
              color: AppColors.scaffoldBackground,
              borderRadius: AppDefaults.borderRadius,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* <----  Current Password -----> */
                const Text("Current Password"),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SvgPicture.asset(AppIcons.eye),
                    ),
                    suffixIconConstraints: const BoxConstraints(),
                  ),
                ),
                const SizedBox(height: AppDefaults.padding),

                /* <---- New Password -----> */
                const Text("New Password"),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SvgPicture.asset(AppIcons.eye),
                    ),
                    suffixIconConstraints: const BoxConstraints(),
                  ),
                ),
                const SizedBox(height: AppDefaults.padding),

                /* <---- Confirm Password-----> */
                const Text("Confirm Password"),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SvgPicture.asset(AppIcons.eye),
                    ),
                    suffixIconConstraints: const BoxConstraints(),
                  ),
                ),
                const SizedBox(height: AppDefaults.padding),

                /* <---- Submit -----> */
                const SizedBox(height: AppDefaults.padding),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Update Password'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/custom_text_field.dart';
import '../../core/constants/constants.dart';

class PasswordResetPage extends StatelessWidget {
  const PasswordResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldWithBoxBackground,
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('New Password'),
        backgroundColor: AppColors.scaffoldBackground,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(AppDefaults.margin),
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDefaults.padding,
                  vertical: AppDefaults.padding * 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: AppDefaults.borderRadius,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Add New password',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: AppDefaults.padding * 3),
                    const CustomTextField(
                      label: 'New Password',
                      hasBorder: true,
                    ),
                    const SizedBox(height: AppDefaults.padding),
                    const CustomTextField(
                      label: 'Confirm Password',
                      hasBorder: true,
                    ),
                    const SizedBox(height: AppDefaults.padding * 2),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Done'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
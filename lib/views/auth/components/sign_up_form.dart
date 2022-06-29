import 'package:flutter/material.dart';
import '../../../core/components/custom_text_field.dart';

import '../../../core/constants/constants.dart';
import 'already_have_accout.dart';
import 'sign_up_button.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefaults.margin),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppDefaults.boxShadow,
        borderRadius: AppDefaults.borderRadius,
      ),
      child: Column(
        children: const [
          CustomTextField(
            label: 'Name',
            hasBorder: true,
          ),
          SizedBox(height: AppDefaults.padding),
          CustomTextField(
            label: 'Phone Number',
            hasBorder: true,
          ),
          SizedBox(height: AppDefaults.padding),
          CustomTextField(
            label: 'Password',
            hasBorder: true,
          ),
          SignUpButton(),
          AlreadyHaveAnAccount(),
          SizedBox(height: AppDefaults.padding),
        ],
      ),
    );
  }
}

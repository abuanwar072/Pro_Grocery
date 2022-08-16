import 'package:flutter/material.dart';

import '../../../core/components/app_back_button.dart';
import '../../../core/constants/constants.dart';

class ChangePhoneNumberPage extends StatelessWidget {
  const ChangePhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text(
          'Change Phone Number Page',
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
                /* <----  New Phone Number -----> */
                const Text("New Phone Number"),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: AppDefaults.padding),

                /* <---- Retype Phone Number -----> */
                const Text("Retype Phone Number"),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: AppDefaults.padding),

                /* <---- Submit -----> */
                const SizedBox(height: AppDefaults.padding),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Update Phone Number'),
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

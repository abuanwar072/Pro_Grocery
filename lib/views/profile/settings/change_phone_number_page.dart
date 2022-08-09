import 'package:flutter/material.dart';

import '../../../core/components/app_back_button.dart';

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
    );
  }
}

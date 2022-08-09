import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text(
          'Notification',
        ),
      ),
    );
  }
}

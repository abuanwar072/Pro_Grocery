import 'package:flutter/material.dart';
import 'package:grocery/core/components/app_back_button.dart';

class AllOrderPage extends StatelessWidget {
  const AllOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('My Order'),
      ),
    );
  }
}

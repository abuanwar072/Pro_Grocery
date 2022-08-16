import 'package:flutter/material.dart';
import '../../../core/components/app_back_button.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Payment Option'),
      ),
      body: Column(children: const []),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../core/components/app_back_button.dart';

class CouponAndOffersPage extends StatelessWidget {
  const CouponAndOffersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text(
          'Offer And Promos',
        ),
      ),
    );
  }
}

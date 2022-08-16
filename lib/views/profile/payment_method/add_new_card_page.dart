import 'package:flutter/material.dart';
import '../../../core/components/app_back_button.dart';

class AddNewCardPage extends StatelessWidget {
  const AddNewCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Add New Card'),
      ),
      body: Column(children: const []),
    );
  }
}

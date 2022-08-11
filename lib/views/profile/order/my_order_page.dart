import 'package:flutter/material.dart';

import '../../../core/components/app_back_button.dart';
import 'components/all_tab.dart';
import 'components/completed_tab.dart';
import 'components/custom_tab_label.dart';
import 'components/running_tab.dart';

class AllOrderPage extends StatelessWidget {
  const AllOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const AppBackButton(),
          title: const Text('My Order'),
          bottom: const TabBar(
            physics: NeverScrollableScrollPhysics(),
            tabs: [
              CustomTabLabel(label: 'All', value: '(58)'),
              CustomTabLabel(label: 'Running', value: '(14)'),
              CustomTabLabel(label: 'Previous', value: '(44)'),
            ],
          ),
        ),
        body: Container(
          color: const Color(0xFFF2F2F2),
          child: const TabBarView(
            children: [
              AllTab(),
              RunningTab(),
              CompletedTab(),
            ],
          ),
        ),
      ),
    );
  }
}

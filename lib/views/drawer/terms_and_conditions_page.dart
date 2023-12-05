import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import 'components/faq_item.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Terms And Condition'),
      ),
      body: const Column(
        children: [
          TitleAndParagraph(
              isTitleHeadline: false,
              title: 'General site usage last revised\nDecember 12-01-2020.',
              paragraph:
                  '''Welcome to www.saydulmoon.info. Officia irure irure anim nisi exercitation velit cupidatat qui Lorem id ad. Amet quis occaecat quis voluptate cupidatat quis irure irure consequat irure.'''),
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '1. Agreement',
              paragraph:
                  '''Officia irure irure anim nisi exercitation velit cupidatat qui Lorem id ad. Amet quis occaecat quis voluptate cupidatat quis irure irure consequat irure.'''),
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '2. Account',
              paragraph:
                  '''Officia irure irure anim nisi exercitation velit cupidatat qui Lorem id ad. Amet quis occaecat quis voluptate cupidatat quis irure irure consequat irure.'''),
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '3. Relationship With Groceries',
              paragraph:
                  '''Officia irure irure anim nisi exercitation velit cupidatat qui Lorem id ad. Amet quis occaecat quis voluptate cupidatat quis irure irure consequat irure.Officia irure irure anim nisi exercitation velit cupidatat qui Lorem id ad. Amet quis occaecat quis '''),
        ],
      ),
    );
  }
}

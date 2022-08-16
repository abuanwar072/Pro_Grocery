import 'package:flutter/material.dart';

import '../../core/constants/app_defaults.dart';
import 'components/ad_space.dart';
import 'components/header_home_page.dart';
import 'components/our_new_item.dart';
import 'components/popular_packs.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            HeaderHomePage(),
            AdSpace(),
            PopularPacks(),
            SizedBox(height: AppDefaults.padding),
            OurNewItem(),
          ],
        ),
      ),
    );
  }
}

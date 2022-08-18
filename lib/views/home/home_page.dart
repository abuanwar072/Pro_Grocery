import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery/core/constants/app_icons.dart';

import '../../core/constants/app_defaults.dart';
import '../../core/routes/app_routes.dart';
import 'components/ad_space.dart';
import 'components/header_home_page.dart';
import 'components/our_new_item.dart';
import 'components/popular_packs.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SafeArea(
    //   child: SingleChildScrollView(
    //     child: Column(
    //       children: const [
    //         HeaderHomePage(),
    //         AdSpace(),
    //         PopularPacks(),
    //         SizedBox(height: AppDefaults.padding),
    //         OurNewItem(),
    //       ],
    //     ),
    //   ),
    // );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.drawerPage);
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2F6F3),
                  shape: const CircleBorder(),
                ),
                child: SvgPicture.asset(AppIcons.sidebarIcon),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8, top: 4, bottom: 4),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.search);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF2F6F3),
                    shape: const CircleBorder(),
                  ),
                  child: SvgPicture.asset(AppIcons.search),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

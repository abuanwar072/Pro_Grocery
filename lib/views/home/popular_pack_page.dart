import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/bundle_tile_square.dart';
import '../../core/constants/constants.dart';
import '../../core/routes/app_routes.dart';

class PopularPackPage extends StatelessWidget {
  const PopularPackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Pack'),
        leading: const AppBackButton(),
      ),
      body: Stack(
        children: [
          GridView.builder(
            padding: const EdgeInsets.only(top: AppDefaults.padding),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              childAspectRatio: 0.9,
            ),
            itemCount: 16,
            itemBuilder: (context, index) {
              return BundleTileSquare(
                data: Dummy.bundles.first,
              );
            },
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(AppDefaults.padding * 2),
              decoration: const BoxDecoration(
                color: Colors.white60,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.createMyPack);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.shoppingBag),
                    const SizedBox(width: AppDefaults.padding),
                    const Text('Create Own Pack'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

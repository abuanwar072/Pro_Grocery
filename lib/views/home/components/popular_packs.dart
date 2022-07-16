import 'package:flutter/material.dart';

import '../../../core/components/bundle_tile_square.dart';
import '../../../core/components/title_and_action_button.dart';
import '../../../core/constants/constants.dart';

class PopularPacks extends StatelessWidget {
  const PopularPacks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndActionButton(
          title: 'Popular Packs',
          onTap: () {},
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.only(left: AppDefaults.padding),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              BundleTileSquare(data: Dummy.bundles.first),
              BundleTileSquare(data: Dummy.bundles.first),
              BundleTileSquare(data: Dummy.bundles.first),
            ],
          ),
        ),
      ],
    );
  }
}

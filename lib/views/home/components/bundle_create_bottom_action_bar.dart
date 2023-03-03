import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/constants.dart';
import 'product_avatar_with_quantity.dart';

class BottomActionBar extends StatelessWidget {
  const BottomActionBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: AppDefaults.bottomSheetRadius,
      ),
      child: Row(
        children: [
          const ProductAvatarWithQuanitty(
            productImage: 'https://i.imgur.com/vom6opy.png',
            quantity: 2,
          ),
          const ProductAvatarWithQuanitty(
            productImage: 'https://i.imgur.com/GIqY9ym.png',
            quantity: 0,
          ),
          const ProductAvatarWithQuanitty(
            productImage: 'https://i.imgur.com/1xYlwGD.png',
            quantity: 5,
          ),
          // const ProductAvatarWithQuanitty(
          //   productImage: 'https://i.imgur.com/W6DJD9Y.png',
          //   quantity: 0,
          // ),
          const Spacer(),
          Text(
            '\$35.05',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(width: 8),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: SvgPicture.asset(AppIcons.arrowForward),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';

class BuyNowRow extends StatelessWidget {
  const BuyNowRow({
    Key? key,
    required this.onCartButtonTap,
    required this.onBuyButtonTap,
  }) : super(key: key);

  final void Function() onCartButtonTap;
  final void Function() onBuyButtonTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppDefaults.padding,
      ),
      child: Row(
        children: [
          OutlinedButton(
            onPressed: onCartButtonTap,
            child: SvgPicture.asset(AppIcons.shoppingCart),
          ),
          const SizedBox(width: AppDefaults.padding),
          Expanded(
            child: ElevatedButton(
              onPressed: onBuyButtonTap,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(AppDefaults.padding * 1.2),
              ),
              child: const Text('Buy Now'),
            ),
          ),
        ],
      ),
    );
  }
}

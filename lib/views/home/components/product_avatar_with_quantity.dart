import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';
import '../../../core/constants/constants.dart';

class ProductAvatarWithQuanitty extends StatelessWidget {
  const ProductAvatarWithQuanitty({
    Key? key,
    required this.productImage,
    required this.quantity,
  }) : super(key: key);

  final String productImage;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
          padding: const EdgeInsets.all(AppDefaults.padding / 2),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          width: 50,
          height: 50,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: NetworkImageWithLoader(productImage, fit: BoxFit.contain),
          ),
        ),
        if (quantity > 0)
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.primary, width: 2),
              ),
              child: Text(
                'x$quantity',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.black),
              ),
            ),
          )
      ],
    );
  }
}

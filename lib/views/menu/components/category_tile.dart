import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';
import '../../../core/constants/constants.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.imageLink,
    required this.label,
    this.backgroundColor,
    required this.onTap,
  }) : super(key: key);

  final String imageLink;
  final String label;
  final Color? backgroundColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.scaffoldBackground,
      child: InkWell(
        borderRadius: AppDefaults.borderRadius,
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(AppDefaults.padding * 1),
              decoration: BoxDecoration(
                color: backgroundColor ?? AppColors.textInputBackground,
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                width: 36,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: NetworkImageWithLoader(
                    imageLink,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

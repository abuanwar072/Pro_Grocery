import 'package:flutter/material.dart';

import '../../core/components/network_image.dart';
import '../../core/constants/constants.dart';
import '../../core/routes/app_routes.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Text(
            'Choose a category',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                CategoryTile(
                  imageLink: 'https://i.imgur.com/tGChxbZ.png',
                  label: 'Vegetables',
                  backgroundColor: AppColors.primary,
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
                CategoryTile(
                  imageLink: 'https://i.imgur.com/yOFxoIP.png',
                  label: 'Meat And Fish',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
                CategoryTile(
                  imageLink: 'https://i.imgur.com/GPsRaFC.png',
                  label: 'Medicine',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
                CategoryTile(
                  imageLink: 'https://i.imgur.com/mGRqfnc.png',
                  label: 'Baby Care',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
                CategoryTile(
                  imageLink: 'https://i.imgur.com/fwyz4oC.png',
                  label: 'Office Supplies',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
                CategoryTile(
                  imageLink: 'https://i.imgur.com/DNr8a6R.png',
                  label: 'Beauty',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
                CategoryTile(
                  imageLink: 'https://i.imgur.com/O2ZX5nR.png',
                  label: 'Gym Equipment',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
                CategoryTile(
                  imageLink: 'https://i.imgur.com/wJBopjL.png',
                  label: 'Gardening Tools',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
                CategoryTile(
                  imageLink: 'https://i.imgur.com/P4yJA9t.png',
                  label: 'Pet Care',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
                CategoryTile(
                  imageLink: 'https://i.imgur.com/sxGf76e.png',
                  label: 'Eye Wears',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
                CategoryTile(
                  imageLink: 'https://i.imgur.com/BPvKeXl.png',
                  label: 'Pack',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
                CategoryTile(
                  imageLink: 'https://i.imgur.com/m65fusg.png',
                  label: 'Others',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.categoryDetails);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
              padding: const EdgeInsets.all(AppDefaults.padding * 1.5),
              decoration: BoxDecoration(
                color: backgroundColor ?? AppColors.textInputBackground,
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                height: 60,
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
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

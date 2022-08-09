import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/network_image.dart';
import '../../core/components/product_tile_square.dart';
import '../../core/constants/constants.dart';
import '../../core/themes/app_themes.dart';

class BundleCreatePage extends StatelessWidget {
  const BundleCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Create My Pack'),
      ),
      body: Column(
        children: const [
          SearchBar(),
          FoodCategories(),
          SizedBox(height: AppDefaults.padding / 2),
          ProductGridView(),
          BottomActionBar(),
        ],
      ),
    );
  }
}

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
            style: Theme.of(context).textTheme.headline6?.copyWith(
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
                    .caption
                    ?.copyWith(color: Colors.black),
              ),
            ),
          )
      ],
    );
  }
}

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(top: AppDefaults.padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          childAspectRatio: 0.9,
        ),
        itemCount: 16,
        itemBuilder: (context, index) {
          return ProductTileSquare(
            data: Dummy.products.first,
          );
        },
      ),
    );
  }
}

class FoodCategories extends StatelessWidget {
  const FoodCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDefaults.padding,
      ),
      child: Row(
        children: [
          AppChip(
            isActive: true,
            label: 'Vegetables',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Meat & Fish',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Medicine',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Baby Care',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class AppChip extends StatelessWidget {
  const AppChip({
    Key? key,
    required this.isActive,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final bool isActive;
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return Padding(
        padding: const EdgeInsets.all(4),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: const StadiumBorder(),
          ),
          child: Text(label),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(4),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(primary: Colors.grey),
          child: Text(label),
        ),
      );
    }
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: AppTheme.secondaryInputDecorationTheme,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Search Product',
            suffixIcon: IconButton(
              icon: SvgPicture.asset(
                AppIcons.search,
                width: 24,
                color: AppColors.placeholder,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/network_image.dart';
import '../../core/constants/constants.dart';
import 'components/animated_dots.dart';

class BundleProductDetailsPage extends StatelessWidget {
  /// TODO: Refactor Guide for This Page
  const BundleProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Bundle Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImagesSlider(
              images: [
                'https://i.imgur.com/NOuZzbe.png',
                'https://i.imgur.com/NOuZzbe.png',
                'https://i.imgur.com/NOuZzbe.png',
              ],
            ),
            /* <---- Product Data -----> */
            Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Bundle Pack',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const PriceAndQuantity(),
                  const SizedBox(height: AppDefaults.padding / 2),
                  const BundleMetaData(),
                  const PackDetails(),
                  const ReviewRowButton(),
                  const Divider(thickness: 0.1),
                  const BuyNowRow(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuyNowRow extends StatelessWidget {
  const BuyNowRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppDefaults.padding,
      ),
      child: Row(
        children: [
          OutlinedButton(
            onPressed: () {},
            child: SvgPicture.asset(AppIcons.shoppingCart),
          ),
          const SizedBox(width: AppDefaults.padding),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
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

class ReviewRowButton extends StatelessWidget {
  const ReviewRowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text(
            'Review',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
          const Spacer(),
          ...List.generate(
            5,
            (index) => const Icon(Icons.star_rounded, color: Colors.yellow),
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18,
            color: AppColors.placeholder,
          ),
        ],
      ),
    );
  }
}

class PackDetails extends StatelessWidget {
  const PackDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.25),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Pack Details',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          /* <---- Items here -----> */
          ...List.generate(
            5,
            (index) => ListTile(
              leading: const AspectRatio(
                aspectRatio: 1 / 1,
                child:
                    NetworkImageWithLoader('https://i.imgur.com/Y0IFT2g.png'),
              ),
              title: const Text('Cabbage'),
              trailing: Text(
                '2 Kg',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: AppDefaults.padding),
        ],
      ),
    );
  }
}

class PriceAndQuantity extends StatelessWidget {
  const PriceAndQuantity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        /* <---- Price -----> */
        Text(
          '\$30',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough,
              ),
        ),
        const SizedBox(width: AppDefaults.padding),
        Text(
          '\$20',
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold),
        ),
        const Spacer(),

        /* <---- Quantity -----> */
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppIcons.addQuantity),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '2',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppIcons.removeQuantity),
            ),
          ],
        )
      ],
    );
  }
}

class BundleMetaData extends StatelessWidget {
  const BundleMetaData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /* <---- Weight -----> */
          Column(
            children: [
              Text(
                '25 Kg',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              Text(
                'Weight',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),

          /* <----  Size -----> */
          Column(
            children: [
              Text(
                'Medium',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              Text(
                'Size',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),

          /* <---- Items -----> */
          Column(
            children: [
              Text(
                '17',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              Text(
                'Items',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductImagesSlider extends StatefulWidget {
  const ProductImagesSlider({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  State<ProductImagesSlider> createState() => _ProductImagesSliderState();
}

class _ProductImagesSliderState extends State<ProductImagesSlider> {
  late PageController controller;
  int currentIndex = 0;

  List<String> images = [];

  @override
  void initState() {
    super.initState();
    images = widget.images;
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: AppColors.coloredBackground,
        borderRadius: AppDefaults.borderRadius,
      ),
      height: MediaQuery.of(context).size.height * 0.35,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (v) {
                    currentIndex = v;
                    setState(() {});
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(AppDefaults.padding),
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: NetworkImageWithLoader(
                          images[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: AnimatedDots(
                  totalItems: images.length,
                  currentIndex: currentIndex,
                ),
              )
            ],
          ),
          Positioned(
            right: 0,
            child: Material(
              color: Colors.transparent,
              borderRadius: AppDefaults.borderRadius,
              child: IconButton(
                onPressed: () {},
                iconSize: 56,
                constraints: const BoxConstraints(minHeight: 56, minWidth: 56),
                icon: Container(
                  padding: const EdgeInsets.all(AppDefaults.padding),
                  decoration: const BoxDecoration(
                    color: AppColors.scaffoldBackground,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(AppIcons.heart),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

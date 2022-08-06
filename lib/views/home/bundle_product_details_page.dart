import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/buy_now_row_button.dart';
import '../../core/components/network_image.dart';
import '../../core/components/price_and_quantity.dart';
import '../../core/components/product_images_slider.dart';
import '../../core/components/review_row_button.dart';
import '../../core/constants/constants.dart';

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
                  const PriceAndQuantityRow(
                    currentPrice: 20,
                    orginalPrice: 30,
                    quantity: 2,
                  ),
                  const SizedBox(height: AppDefaults.padding / 2),
                  const BundleMetaData(),
                  const PackDetails(),
                  const ReviewRowButton(totalStars: 5),
                  const Divider(thickness: 0.1),
                  BuyNowRow(
                    onBuyButtonTap: () {},
                    onCartButtonTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
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

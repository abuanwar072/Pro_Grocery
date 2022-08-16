import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import 'order_details_product_tile.dart';

class TotalOrderProductDetails extends StatelessWidget {
  const TotalOrderProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Product Details',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          const SizedBox(height: 8),
          ListView.separated(
            itemBuilder: (context, index) {
              return OrderDetailsProductTile(data: Dummy.products[index]);
            },
            separatorBuilder: (context, index) => const Divider(
              thickness: 0.2,
            ),
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}

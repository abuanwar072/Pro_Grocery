import 'package:flutter/material.dart';

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

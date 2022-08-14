import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class TotalAmountAndPaidData extends StatelessWidget {
  const TotalAmountAndPaidData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Total Amount',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const Spacer(),
              Text(
                '\$120',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                'Paid From',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const Spacer(),
              Text(
                'Credit Card',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

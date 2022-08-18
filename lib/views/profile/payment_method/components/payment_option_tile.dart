import 'package:flutter/material.dart';

import '../../../../core/components/network_image.dart';
import '../../../../core/constants/constants.dart';

class PaymentOptionTile extends StatelessWidget {
  const PaymentOptionTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.accountName,
    required this.onTap,
  }) : super(key: key);

  final String icon;
  final String label;
  final String accountName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppDefaults.padding / 2,
        horizontal: AppDefaults.padding,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: AppDefaults.borderRadius,
        child: Container(
          padding: const EdgeInsets.all(AppDefaults.padding),
          decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: AppColors.placeholder),
            borderRadius: AppDefaults.borderRadius,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: NetworkImageWithLoader(icon),
                ),
              ),
              const SizedBox(width: AppDefaults.padding),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: AppDefaults.padding / 3),
                  Text(
                    accountName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.black),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

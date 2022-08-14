import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';
import 'profile_squre_tile.dart';

class ProfileHeaderOptions extends StatelessWidget {
  const ProfileHeaderOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefaults.padding),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppDefaults.borderRadius,
        boxShadow: AppDefaults.boxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ProfileSqureTile(
            label: 'All Order',
            icon: AppIcons.truckIcon,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.myOrder);
            },
          ),
          ProfileSqureTile(
            label: 'Voucher',
            icon: AppIcons.voucher,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.coupon);
            },
          ),
          ProfileSqureTile(
            label: 'Address',
            icon: AppIcons.homeProfile,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.deliveryAddress);
            },
          ),
        ],
      ),
    );
  }
}

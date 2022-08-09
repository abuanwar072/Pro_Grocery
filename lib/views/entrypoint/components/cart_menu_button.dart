import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/constants.dart';

class CartMenuButton extends StatelessWidget {
  const CartMenuButton({
    Key? key,
    required this.onNavTap,
  }) : super(key: key);

  final void Function(int) onNavTap;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => onNavTap(2),
      backgroundColor: AppColors.primary,
      child: SvgPicture.asset(AppIcons.cart),
    );
  }
}

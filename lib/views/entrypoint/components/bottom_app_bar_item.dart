import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/constants.dart';

class BottomAppBarItem extends StatelessWidget {
  const BottomAppBarItem({
    super.key,
    required this.iconLocation,
    required this.name,
    required this.isActive,
    required this.onTap,
  });

  final String iconLocation;
  final String name;
  final bool isActive;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconLocation,
            colorFilter: ColorFilter.mode(
              isActive ? AppColors.primary : AppColors.placeholder,
              BlendMode.srcIn,
            ),
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: isActive ? AppColors.primary : AppColors.placeholder,
                ),
          ),
        ],
      ),
    );
  }
}

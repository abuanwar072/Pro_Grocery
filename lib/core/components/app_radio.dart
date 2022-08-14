import 'package:flutter/material.dart';

import '../constants/constants.dart';

class AppRadio extends StatelessWidget {
  const AppRadio({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: isActive ? AppColors.primary : AppColors.placeholder),
        shape: BoxShape.circle,
      ),
      child: Container(
        width: 16,
        height: 16,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: isActive ? AppColors.primary : AppColors.textInputBackground,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

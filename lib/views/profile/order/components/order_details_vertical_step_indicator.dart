import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class VerticalStepIndicator extends StatelessWidget {
  const VerticalStepIndicator({
    Key? key,
    this.height = 50,
    this.isStart = false,
    this.isActive = false,
    this.isEnd = false,
  }) : super(key: key);

  final double height;
  final bool isStart;
  final bool isActive;
  final bool isEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppDefaults.margin,
      ),
      child: Column(
        children: [
          if (!isStart)
            Container(
              height: height / 2,
              width: 3,
              decoration: BoxDecoration(
                color: isActive ? AppColors.primary : Colors.grey,
              ),
            ),
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              border: Border.all(
                color: isActive ? AppColors.primary : Colors.grey,
                width: 3,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            height: !isStart ? height / 2 : height,
            width: 3,
            decoration: BoxDecoration(
              color: isActive ? AppColors.primary : Colors.grey,
              borderRadius: isEnd ? AppDefaults.borderRadius : null,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ReviewRowButton extends StatelessWidget {
  const ReviewRowButton({
    Key? key,
    required this.totalStars,
  }) : super(key: key);

  final int totalStars;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text(
            'Review',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
          const Spacer(),
          ...List.generate(
            /// You cannot add more than 5 star or less than 0 star
            totalStars > 5 || totalStars < 1 ? 5 : totalStars,
            (index) => const Icon(Icons.star_rounded, color: Color(0xFFFFC107)),
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18,
            color: AppColors.placeholder,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ReviewStars extends StatelessWidget {
  const ReviewStars({
    super.key,
    required this.starsGiven,
    this.iconSize,
  });

  final int starsGiven;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ...List.generate(
          5,
          (index) {
            if (starsGiven <= index) {
              return Icon(
                Icons.star_rounded,
                color: Colors.grey,
                size: iconSize ?? 24,
              );
            } else {
              return Icon(
                Icons.star_rounded,
                color: const Color(0xFFFFC107),
                size: iconSize ?? 24,
              );
            }
          },
        ),
      ],
    );
  }
}

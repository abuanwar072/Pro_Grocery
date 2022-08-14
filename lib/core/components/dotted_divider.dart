import 'package:flutter/material.dart';

class DottedDivider extends StatelessWidget {
  const DottedDivider({
    Key? key,
    this.isVertical = false,
    this.color,
  }) : super(key: key);

  final Color? color;
  final bool isVertical;

  @override
  Widget build(BuildContext context) {
    if (isVertical) {
      return SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(
            30,
            (index) => Container(
              margin: const EdgeInsets.all(3),
              width: 1,
              height: 8,
              color: color ?? Colors.black,
            ),
          ),
        ),
      );
    } else {
      return SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            30,
            (index) => Container(
              margin: const EdgeInsets.all(3),
              width: 8,
              height: 0.3,
              color: color ?? Colors.black,
            ),
          ),
        ),
      );
    }
  }
}

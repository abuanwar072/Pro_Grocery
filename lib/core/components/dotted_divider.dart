import 'package:flutter/material.dart';

class DottedDivider extends StatelessWidget {
  const DottedDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTabLabel extends StatelessWidget {
  const CustomTabLabel({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$label ',
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(),
        ),
      ],
    );
  }
}

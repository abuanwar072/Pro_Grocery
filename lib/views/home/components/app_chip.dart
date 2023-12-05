import 'package:flutter/material.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    Key? key,
    required this.isActive,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final bool isActive;
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return Padding(
        padding: const EdgeInsets.all(4),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: const StadiumBorder(),
          ),
          child: Text(label),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(4),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(foregroundColor: Colors.grey),
          child: Text(label),
        ),
      );
    }
  }
}

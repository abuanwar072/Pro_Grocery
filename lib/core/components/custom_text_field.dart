import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    this.controller,
    this.isObscured = false,
    this.hint,
    this.validator,
    this.textInputAction,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.onFieldSubmitted,
    this.hasBorder = false,
  }) : super(key: key);

  final String label;
  final TextEditingController? controller;
  final bool isObscured;
  final String? hint;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String?)? onFieldSubmitted;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(label),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: isObscured,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffixIconConstraints: const BoxConstraints(maxWidth: 36),
            prefixIconConstraints: const BoxConstraints(maxWidth: 36),
            fillColor: hasBorder ? AppColors.scaffoldBackground : null,
            enabledBorder: hasBorder
                ? const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.1,
                    ),
                  )
                : null,
            focusedBorder: hasBorder
                ? const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.1,
                    ),
                  )
                : null,
          ),
          validator: validator,
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          onFieldSubmitted: onFieldSubmitted,
        ),
      ],
    );
  }
}

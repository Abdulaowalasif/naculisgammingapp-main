
// Reusable Text Field Widget
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 5),
        TextFormField(
          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: Colors.grey),
            filled: true,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
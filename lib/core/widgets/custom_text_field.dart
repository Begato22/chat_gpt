import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.prefix,
    required this.validator,
    required this.label,
    this.obscureText = false,
    this.autofocus = false,
    this.suffix,
    this.suffixFunc,
    this.onChanged,
  });
  final TextEditingController controller;
  final TextInputType keyboardType;
  final IconData prefix;
  final IconData? suffix;
  final Function? suffixFunc;
  final Function(String? value) validator;
  final Function(String value)? onChanged;
  final String label;
  final bool obscureText;
    final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      autofocus: autofocus,
      decoration: InputDecoration(
        prefixIcon: Icon(prefix),
        suffixIcon: GestureDetector(
          child: Icon(suffix),
          onTap: () => suffixFunc!(),
        ),
        hintText: label,
        border: const UnderlineInputBorder(),
      ),
      obscureText: obscureText,
      validator: (val) => validator(val),
      onChanged: (value) {
        onChanged != null ? onChanged!(value) : null;
      },
    );
  }
}

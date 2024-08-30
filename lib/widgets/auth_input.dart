import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  final String hintText, label;
  final TextEditingController controller;
  final bool isPasswordField;
  const AuthInput({
    required this.hintText,
    required this.label,
    required this.controller,
    this.isPasswordField = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPasswordField,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.grey)),
        contentPadding: const EdgeInsets.all(10),
        hintText: hintText,
        label: Text(label),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 1.5),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

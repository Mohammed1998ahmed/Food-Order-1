import 'package:flutter/material.dart';

import '../themes/styles.dart';

class Text_Form_Field_App extends StatelessWidget {
  const Text_Form_Field_App({
    super.key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.hintStyle,
    this.labelStyle,
    this.suffixIcon,
    this.obscureText,
  });

  final TextEditingController controller;
  final bool? obscureText;
  final String? hintText;
  final String? labelText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText ?? 'Email address',
        hintStyle: hintStyle ?? Styles_App.font16grayRegular,
        labelText: labelText ?? 'Email address',
        labelStyle: labelStyle ?? Styles_App.font12GrayLight,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        suffixIcon: suffixIcon ?? null,
      ),
      obscureText: obscureText ?? false,
    );
  }
}

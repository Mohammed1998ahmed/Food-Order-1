import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/colors.dart';
import '../themes/styles.dart';

class ElevatedButtonWidght extends StatelessWidget {
  const ElevatedButtonWidght({
    super.key,
    this.colorBackground,
    this.horizontal,
    this.vertical,
    this.radius,
    required this.onPressed,
    this.name_button,
    this.textStyle,
  });
  final Color? colorBackground;
  final double? horizontal;
  final double? vertical;
  final double? radius;
  final void Function() onPressed;
  final String? name_button;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            colorBackground ?? Colors_App.primaryColor),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            horizontal: horizontal ?? 120.w, vertical: vertical ?? 20.h)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 10))),
      ),
      onPressed: onPressed,
      child: Text(
        name_button ?? 'GET STARTER',
        style: textStyle ?? Styles_App.font14whitebold,
      ),
    );
  }
}

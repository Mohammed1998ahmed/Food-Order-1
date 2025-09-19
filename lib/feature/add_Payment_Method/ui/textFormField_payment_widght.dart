import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class TextFormField_Payment_Widght extends StatelessWidget {
  const TextFormField_Payment_Widght({
    super.key,
    required this.controller,
    this.hintText,
    this.prefixIcon,
  });

  final TextEditingController controller;
  final String? hintText;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hintText ?? '4343 4343 4343 4343',
        hintStyle: Styles_App.font16BlackRegular
            .copyWith(color: Colors_App.grayLightColor),
        prefixIcon: prefixIcon ?? null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            width: 1.0,
            color: Colors_App.grayLightColor, // ← هنا تحدد اللون الذي تريده
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            width: 1.0,
            color: Colors_App.primaryColor, // ← لون البوردر عند التركيز
          ),
        ),
      ),
    );
  }
}

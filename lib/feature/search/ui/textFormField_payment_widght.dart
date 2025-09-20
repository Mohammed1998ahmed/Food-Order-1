import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class TextFormField_Search_Widght extends StatelessWidget {
  const TextFormField_Search_Widght({
    super.key,
    required this.controller,
    this.hintText,
    this.prefixIcon,
    this.onFieldSubmitted,
  });

  final TextEditingController controller;
  final String? hintText;
  final Widget? prefixIcon;
  final Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 55.h,
      child: TextFormField(
        scrollPadding: EdgeInsets.zero,
        controller: controller,
        onFieldSubmitted: onFieldSubmitted,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          fillColor: Colors_App.uplighetwhiteColor,
          filled: true,
          hintText: hintText ?? '4343 4343 4343 4343',
          hintStyle: Styles_App.font16BlackRegular
              .copyWith(color: Colors_App.grayLightColor),
          prefixIcon: prefixIcon ?? null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              width: 0.5.w,
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
      ),
    );
  }
}

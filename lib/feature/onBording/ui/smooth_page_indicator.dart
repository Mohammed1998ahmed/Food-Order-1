import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/themes/colors.dart';

class Smooth_Page_Indicator extends StatelessWidget {
  const Smooth_Page_Indicator({
    super.key,
    required this.controller,
    required this.pages,
  });

  final PageController controller;
  final List<Map<String, String>> pages;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 15.h,
      alignment: Alignment.center,
      child: SmoothPageIndicator(
        controller: controller,
        count: pages.length,
        effect: CustomizableEffect(
          activeDotDecoration: DotDecoration(
            width: 15.w,
            height: 7.h,
            color: Colors_App.greenColor,
            borderRadius: BorderRadius.circular(4),
            verticalOffset: 0,
          ),
          dotDecoration: DotDecoration(
            width: 15.w,
            height: 7.h,
            color: Colors_App.greyColor,
            borderRadius: BorderRadius.circular(4),
            verticalOffset: 0,
          ),
          spacing: 6.0.w,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class Choice_Cookie_Widget extends StatelessWidget {
  const Choice_Cookie_Widget({
    super.key,
    this.title,
  });
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 235.w,
          child: Text(
            title ?? 'Choice of top Cookie',
            style: Styles_App.font20Blacklight,
          ),
        ),
        const Spacer(),
        Container(
          width: 90.w,
          height: 32.h,
          decoration: BoxDecoration(
            color: Colors_App.secondaryColor,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Center(
            child: Text(
              'Required'.toUpperCase(),
              style: Styles_App.font12GrayLight
                  .copyWith(color: Colors_App.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}

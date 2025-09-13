import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/styles.dart';

class Text_Welcom_And_Other extends StatelessWidget {
  const Text_Welcom_And_Other({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 143.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome",
            style: Styles_App.font28BlackBold,
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.h, left: 20.w, right: 20.w),
            child: Text(
              "It’s a pleasure to meet you. We are excited that you’re here so let’s get started!",
              textAlign: TextAlign.center,
              style: Styles_App.font16BlackRegular,
            ),
          ),
        ],
      ),
    );
  }
}

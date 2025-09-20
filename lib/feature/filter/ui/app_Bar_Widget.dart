import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';

import '../../../core/themes/styles.dart';

class AppBar_Widget extends StatelessWidget {
  const AppBar_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 16,
            )),
        Padding(
          padding: EdgeInsets.only(left: 120.w),
          child: Center(
            child: Text(
              'Filters',
              style: Styles_App.font16BlackRegular,
            ),
          ),
        ),
        Container()
      ],
    );
  }
}

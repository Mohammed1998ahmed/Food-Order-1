import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/routers/router.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Home Page',
          style: Styles_App.font12GrayLight
              .copyWith(color: Colors_App.primaryColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50.w,
            ),
            Row(
              children: [
                Text(
                  ' HayStreet, Perth',
                  style: Styles_App.font20Blacklight,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors_App.blackColor,
                  size: 30.sp,
                ),
              ],
            ),
            TextButton(
                onPressed: () {
                  context.pushNamed(Routers.filter);
                },
                child: Text(
                  'Filter',
                  style: Styles_App.font16BlackRegular,
                ))
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class Ratings_TExt_Widgets extends StatelessWidget {
  const Ratings_TExt_Widgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120.w,
          height: 20.h,
          child: Row(
            children: [
              Text(
                '4.5',
                style: Styles_App.font12whiteSemiBold.copyWith(
                  color: Colors_App.grayLight2Color,
                ),
              ),
              wSpace(9),
              Icon(
                Icons.star,
                color: Colors_App.primaryColor,
                size: 15,
              ),
              wSpace(2),
              Text(
                '200+ Ratings',
                style: Styles_App.font12whiteSemiBold.copyWith(
                  color: Colors_App.grayLight2Color,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

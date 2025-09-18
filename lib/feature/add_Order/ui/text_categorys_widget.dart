import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class Text_Categorys_Widget extends StatelessWidget {
  const Text_Categorys_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '\$\$',
          style: Styles_App.font16BlackRegular
              .copyWith(color: Colors_App.grayLight2Color),
        ),
        wSpace(13),
        CircleAvatar(
          radius: 3.r,
          backgroundColor: Colors_App.primaryColor,
        ),
        wSpace(10),
        Text(
          'Chinese',
          style: Styles_App.font16BlackRegular
              .copyWith(color: Colors_App.grayLight2Color),
        ),
        wSpace(13),
        CircleAvatar(
          radius: 3.r,
          backgroundColor: Colors_App.primaryColor,
        ),
        wSpace(10),
        Text(
          'American',
          style: Styles_App.font16BlackRegular
              .copyWith(color: Colors_App.grayLight2Color),
        ),
        wSpace(13),
        CircleAvatar(
          radius: 3.r,
          backgroundColor: Colors_App.primaryColor,
        ),
        wSpace(10),
        Text(
          'Deshi food',
          style: Styles_App.font16BlackRegular
              .copyWith(color: Colors_App.grayLight2Color),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/styles.dart';

class Details_Text_Widght extends StatelessWidget {
  const Details_Text_Widght({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Add your payment methods',
          style: Styles_App.font24BlacksemiBold,
        ),
        hSpace(12),
        Center(
          child: Container(
            width: 266.w,
            child: Text(
              'This card will only be charged when you place an order.',
              textAlign: TextAlign.center,
              style: Styles_App.font16BlackRegular,
            ),
          ),
        ),
      ],
    );
  }
}

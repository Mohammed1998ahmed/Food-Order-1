import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/styles.dart';

class TextOffer_Widgets extends StatelessWidget {
  const TextOffer_Widgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 335.w,
          height: 170.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage('assets/image/Banner.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 266.w,
          child: Column(
            children: [
              hSpace(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Text('Free Delivery for 1 Month!',
                    style: Styles_App.font28BlacksemiBold),
              ),
              hSpace(5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Text(
                    'You’ve to order at least \$10 for using free delivery for 1 month.',
                    style: Styles_App.font16BlackRegular),
              ),
            ],
          ),
        )
      ],
    );
  }
}

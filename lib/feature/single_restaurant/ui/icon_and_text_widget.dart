import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class Icon_And_Text_Widget extends StatelessWidget {
  const Icon_And_Text_Widget({
    super.key,
    this.icon,
    this.text,
  });
  final IconData? icon;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 44.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Icon(icon ?? Icons.delivery_dining,
                  color: Colors_App.primaryColor, size: 16.sp),
            ],
          ),
          wSpace(6),
          Container(
            width: 45.w,
            child: Text(text ?? 'Free Delivery',
                maxLines: 2,
                style: Styles_App.font12whiteSemiBold
                    .copyWith(color: Colors_App.grayLight2Color, fontSize: 13)),
          ),
        ],
      ),
    );
  }
}

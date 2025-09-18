import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/themes/colors.dart';

import '../themes/styles.dart';

class Add_Special_Widget extends StatelessWidget {
  const Add_Special_Widget({
    super.key,
    this.title,
    this.colorText,
  });
  final String? title;
  final Color? colorText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 235.w,
          child: Text(
            title ?? 'Add Special Instructions',
            style: Styles_App.font20Blacklight
                .copyWith(color: colorText ?? Colors_App.primaryColor),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            // الاتجاه المعاكس
            size: 15,
          ),
        )
      ],
    );
  }
}

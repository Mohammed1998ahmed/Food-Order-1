import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/styles.dart';

class Add_Special_Widget extends StatelessWidget {
  const Add_Special_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 235.w,
          child: Text(
            'Add Special Instructions',
            style: Styles_App.font20Blacklight,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_forward_ios, // الاتجاه المعاكس
            size: 15,
          ),
        )
      ],
    );
  }
}

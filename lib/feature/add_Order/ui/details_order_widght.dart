import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/styles.dart';
import 'text_categorys_widget.dart';

class Details_Order_Widght extends StatelessWidget {
  const Details_Order_Widght({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        hSpace(20),
        Container(
          width: 249.w,
          child: Text(
            'Mayfield Bakery & Cafe',
            style: Styles_App.font24BlackRegular,
          ),
        ),
        Container(
          width: 340.w,
          child: Text(
            'Shortbread, chocolate turtle cookies, and red velvet. 8 ounces cream cheese, softened.',
            style: Styles_App.font16BlackRegular,
          ),
        ),
        hSpace(20),
        const Text_Categorys_Widget(),
        hSpace(9),
      ],
    );
  }
}

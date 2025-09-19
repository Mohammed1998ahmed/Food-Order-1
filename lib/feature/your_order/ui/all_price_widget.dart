import 'package:flutter/material.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class All_Price_Widget extends StatelessWidget {
  const All_Price_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child: Text(
                "Subtotal",
                style: Styles_App.font16BlackRegular,
              ),
            ),
            const Spacer(),
            Container(
              child: Text(
                "AUD\$30",
                style: Styles_App.font16BlackRegular,
              ),
            ),
          ],
        ),
        hSpace(16),
        Row(
          children: [
            Container(
              child: Text(
                "Delivery",
                style: Styles_App.font16BlackRegular,
              ),
            ),
            const Spacer(),
            Container(
              child: Text(
                "\$0",
                style: Styles_App.font16BlackRegular,
              ),
            ),
          ],
        ),
        hSpace(16),
        Row(
          children: [
            const Spacer(),
            Container(
              child: Text(
                "AUD\$30",
                style: Styles_App.font16BlackRegular
                    .copyWith(color: Colors_App.primaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class Proceed_Payment_Widget extends StatelessWidget {
  const Proceed_Payment_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        GestureDetector(
          onTap: () {},
          child: Container(
            child: Text(
              'Proceed Payment',
              style: Styles_App.font16BlacksemiBold
                  .copyWith(color: Colors_App.primaryColor),
            ),
          ),
        )
      ],
    );
  }
}

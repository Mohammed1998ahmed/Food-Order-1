import 'package:flutter/material.dart';
import 'package:food_order/core/helper/extenations.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class AppBar_Widget extends StatelessWidget {
  const AppBar_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors_App.whiteColor,
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Icon(
          Icons.close,
          size: 16,
        ),
      ),
      title: Text(
        'Your Order',
        style: Styles_App.font16BlacksemiBold,
      ),
      centerTitle: true,
    );
  }
}

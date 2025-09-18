import 'package:flutter/material.dart';

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
        onPressed: () {},
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

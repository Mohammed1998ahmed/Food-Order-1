import 'package:flutter/material.dart';

import '../../../core/themes/styles.dart';

class Appbar_Widget extends StatelessWidget {
  const Appbar_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Text(
        'Your Orders',
        style: Styles_App.font16BlacksemiBold,
      )),
    );
  }
}

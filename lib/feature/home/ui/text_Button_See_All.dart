import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class TextSeeAllWidgets extends StatelessWidget {
  const TextSeeAllWidgets({
    super.key,
    this.title,
    required this.onPressed,
  });
  final String? title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 150.w,
          child: Text(
            title ?? 'Featured \nPartners',
            style: Styles_App.font20Balackbold,
          ),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              'See all',
              style: Styles_App.font16BlackRegular.copyWith(
                color: Colors_App.primaryColor,
              ),
            ))
      ],
    );
  }
}

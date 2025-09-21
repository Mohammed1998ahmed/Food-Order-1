import 'package:flutter/material.dart';

import '../../../core/themes/styles.dart';

class Text_And_Clear_Select_Widget extends StatelessWidget {
  const Text_And_Clear_Select_Widget({
    super.key,
    required this.onTap,
    required this.nameTitle,
  });
  final String nameTitle;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              nameTitle.toUpperCase(),
              style: Styles_App.font16BlackRegular
                  .copyWith(fontWeight: FontWeight.w300),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            child: Text(
              "Clear all".toUpperCase(),
              style: Styles_App.font12GrayLight,
            ),
          ),
        )
      ],
    );
  }
}

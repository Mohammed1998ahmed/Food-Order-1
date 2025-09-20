import 'package:flutter/material.dart';

import '../../../core/themes/styles.dart';

class Line_Text_Button_Clear_Widget extends StatelessWidget {
  const Line_Text_Button_Clear_Widget({
    super.key,
    this.onPressed,
    required this.name_Title,
  });
  final void Function()? onPressed;
  final String name_Title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(name_Title, style: Styles_App.font16BlackRegular)),
        TextButton(
          onPressed: onPressed,
          child: Text('Clean All'.toUpperCase(),
              style: Styles_App.font12GrayLight),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class SwitchListTile_Widget extends StatelessWidget {
  const SwitchListTile_Widget({
    super.key,
    required this.pushNotifications,
    required this.onChanged,
    required this.nameTiile,
    required this.nameSubtitle,
  });

  final bool pushNotifications;
  final void Function(bool) onChanged;
  final String nameTiile;
  final String nameSubtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.notifications),
        wSpace(20),
        Expanded(
          child: SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              nameTiile,
              style: Styles_App.font16BlacksemiBold,
            ),
            subtitle: Text(
              nameSubtitle,
              style: Styles_App.font14blaclight,
            ),
            value: pushNotifications,
            activeColor: Colors_App.primaryColor,
            inactiveThumbColor: Colors_App.whiteColor,
            onChanged: onChanged,

            //  (val)
            //  {
            //   // setState(() => pushNotifications = val);
            // }
          ),
        ),
      ],
    );
  }
}

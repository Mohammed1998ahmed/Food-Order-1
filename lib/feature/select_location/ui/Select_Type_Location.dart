import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class Select_Type_Location extends StatelessWidget {
  const Select_Type_Location({
    super.key,
    this.colorbackground,
    this.colorborder,
    this.icon,
    this.colorIcon,
    this.name_button,
    this.colorTextName,
  });
  final Color? colorbackground;
  final Color? colorborder;
  final IconData? icon;
  final Color? colorIcon;
  final String? name_button;
  final Color? colorTextName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: colorbackground ?? Colors_App.secondaryColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: colorborder ?? Colors_App.primaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon ?? Icons.send,
            color: colorIcon ?? Colors_App.primaryColor,
            size: 20.sp,
          ),
          wSpace(10),
          Text(
            name_button ?? 'Use current location',
            style: Styles_App.font16BlackRegular.copyWith(
              color: colorTextName ?? Colors_App.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

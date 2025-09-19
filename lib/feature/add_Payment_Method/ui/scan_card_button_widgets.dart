import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class Scan_Card_Button_Widgets extends StatelessWidget {
  const Scan_Card_Button_Widgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: Container(
          width: 330.w,
          height: 48.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: Colors_App.grayLightColor)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.camera),
              wSpace(9),
              Text(
                "Scan Card",
                style: Styles_App.font14whitebold
                    .copyWith(color: Colors_App.blackColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}

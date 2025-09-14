import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/space.dart';
import '../themes/colors.dart';
import '../themes/styles.dart';

class Sign_In_With_FaceBook_Or_Google extends StatelessWidget {
  const Sign_In_With_FaceBook_Or_Google({
    super.key,
    this.colorBackground,
    this.assetName,
    this.name_button,
  });
  final Color? colorBackground;
  final String? assetName;
  final String? name_button;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: colorBackground ?? Colors_App.blueColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 28.w,
              height: 28.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage(assetName ?? 'assets/image/facebook.png')),
              ),
            ),
            wSpace(30),
            Text(
              name_button!.toUpperCase(),
              style: Styles_App.font12whiteSemiBold,
            )
          ],
        ),
      ),
    );
  }
}

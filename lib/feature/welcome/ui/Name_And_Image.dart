import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class Name_And_Image extends StatelessWidget {
  const Name_And_Image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: ScreenUtil().screenWidth,
          height: 450.h,
        ),
        Positioned(
          right: 40.w,
          bottom: 50.h,
          child: Container(
            width: 437.w,
            height: 437.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                color: Colors_App.secondaryColor),
          ),
        ),
        Positioned(
          left: 20.w,
          right: 20.w,
          top: 80.h,
          child: Container(
            width: 350.w,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 65.w,
                    height: 65.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/logo.png'))),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Tamang FoodService",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: Styles_App.font37BlackBold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 220.h,
            left: 80.w,
            right: 81.w,
            child: Container(
              width: 213.49.w,
              height: 243.09.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/welcomImage1.png'))),
            ))
      ],
    );
  }
}

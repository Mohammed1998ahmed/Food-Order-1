import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';

class Stack_Image_Widght extends StatelessWidget {
  const Stack_Image_Widght({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 375.w,
          height: 280.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/home1.png'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          top: 50.h,
          left: 30.w,
          child: CircleAvatar(
            radius: 15.r,
            child: Icon(
              Icons.close,
              color: Colors_App.whiteColor,
              size: 17,
            ),
            backgroundColor: Colors_App.grayLight2Color,
          ),
        )
      ],
    );
  }
}

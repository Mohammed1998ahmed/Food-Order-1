import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/styles.dart';

class Base_Title_And_Image extends StatelessWidget {
  const Base_Title_And_Image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

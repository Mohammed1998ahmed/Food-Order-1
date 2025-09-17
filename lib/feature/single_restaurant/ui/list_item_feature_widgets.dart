import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';
import '../data/local_Data.dart';

class List_Item_Feature_Widgets extends StatelessWidget {
  const List_Item_Feature_Widgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 198.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 140.w,
              height: 198.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 140.w,
                    height: 140.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        image: DecorationImage(
                            image: AssetImage(LocalData.images[index]),
                            fit: BoxFit.cover)),
                  ),
                  hSpace(10),
                  Container(
                    child: Text(
                      "Cookie Sandwich",
                      style: Styles_App.font12GrayLight
                          .copyWith(color: Colors_App.blackColor),
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "\$\$",
                          style: Styles_App.font14whitebold
                              .copyWith(color: Colors_App.greyColor),
                        ),
                        wSpace(7),
                        CircleAvatar(
                          radius: 3.r,
                          backgroundColor: Colors_App.greyColor,
                        ),
                        wSpace(7),
                        Text(
                          "Chinese",
                          style: Styles_App.font14whitebold
                              .copyWith(color: Colors_App.greyColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => wSpace(14),
          itemCount: LocalData.images.length),
    );
  }
}

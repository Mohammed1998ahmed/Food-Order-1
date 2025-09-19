import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class ListView_Itme_Widget extends StatelessWidget {
  const ListView_Itme_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 337.h,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 335.w,
                height: 78.h,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            width: 24.w,
                            height: 24.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.r),
                                border: Border.all(
                                    color: Colors_App.grayLight2Color)),
                            child: Center(
                              child: Text(
                                "${index + 1}",
                                style: Styles_App.font12GrayLight
                                    .copyWith(color: Colors_App.primaryColor),
                              ),
                            ))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Container(
                        width: 200.w,
                        height: 85.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Cookie Sandwich',
                                style: Styles_App.font18Blacklight,
                              ),
                            ),
                            hSpace(6),
                            Container(
                              height: 40.h,
                              child: Text(
                                  'Shortbread, chocolate turtle cookies, and red velvet.',
                                  style: Styles_App.font14blaclight),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            child: Text(
                          "AUD\$10",
                          style: Styles_App.font14whitebold
                              .copyWith(color: Colors_App.primaryColor),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(
                color: Colors_App.grayLight2Color,
                thickness: 0.5.h,
              ),
          itemCount: 3),
    );
  }
}

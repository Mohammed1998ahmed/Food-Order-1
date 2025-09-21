import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class Order_DetAils_Widget extends StatelessWidget {
  const Order_DetAils_Widget({
    super.key,
    required this.old_order,
    required this.onTap,
  });
  final bool old_order;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 332.w,
        height: 110.h,
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 110.w,
                  height: 110.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/home5.png'))),
                ),
                old_order
                    ? Container(
                        width: 110.w,
                        height: 110.h,
                        decoration: BoxDecoration(
                            color: Colors_App.whiteColor.withOpacity(0.5)),
                      )
                    : Container(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 204.w,
                    child: Text(
                      'McDonald\'s',
                      style: old_order
                          ? Styles_App.font18Blacklight.copyWith(
                              color: Colors_App.blackColor.withOpacity(0.5))
                          : Styles_App.font18Blacklight,
                    ),
                  ),
                  Container(
                    width: 204.w,
                    height: 50.h,
                    child: Text(
                      'Shortbread, chocolate turtle cookies, and red velvet.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: old_order
                          ? Styles_App.font16BlackRegular.copyWith(
                              color: Colors_App.blackColor.withOpacity(0.5))
                          : Styles_App.font16BlackRegular,
                    ),
                  ),
                  Container(
                    width: 200.w,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 100.w,
                            height: 20,
                            child: Row(
                              children: [
                                Text(
                                  '\$\$',
                                  style: old_order
                                      ? Styles_App.font16BlackRegular.copyWith(
                                          color: Colors_App.blackColor
                                              .withOpacity(0.5))
                                      : Styles_App.font16BlackRegular,
                                ),
                                wSpace(8),
                                CircleAvatar(
                                  radius: 3.r,
                                ),
                                wSpace(8),
                                Text(
                                  'Chinese',
                                  overflow: TextOverflow.ellipsis,
                                  style: old_order
                                      ? Styles_App.font16BlackRegular.copyWith(
                                          color: Colors_App.blackColor
                                              .withOpacity(0.5))
                                      : Styles_App.font16BlackRegular,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Text(
                              'AUD\$10',
                              style: Styles_App.font14whitebold.copyWith(
                                  color: old_order
                                      ? Colors_App.primaryColor.withOpacity(0.5)
                                      : Colors_App.primaryColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

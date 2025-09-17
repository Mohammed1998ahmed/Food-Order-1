import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class List_Item_Feature_Column_Widgets extends StatelessWidget {
  const List_Item_Feature_Column_Widgets({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: images.length * 144,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              width: 332.w,
              height: 110.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 110.w,
                    height: 110.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover)),
                  ),
                  wSpace(18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Cookie Sandwich",
                          style: Styles_App.font18Blacklight
                              .copyWith(color: Colors_App.blackColor),
                        ),
                      ),
                      hSpace(6),
                      Container(
                        width: 204.w,
                        child: Text(
                          "Shortbread, chocolate turtle cookies, and red velvet.",
                          style: Styles_App.font14blaclight
                              .copyWith(color: Colors_App.blackColor),
                        ),
                      ),
                      hSpace(12),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "\$\$",
                              style: Styles_App.font14whitebold
                                  .copyWith(color: Colors_App.blackColor),
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
                                  .copyWith(color: Colors_App.blackColor),
                            ),
                            wSpace(64),
                            Text(
                              "AUD\$10",
                              style: Styles_App.font14whitebold
                                  .copyWith(color: Colors_App.primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Divider(
                  color: Colors_App.greyColor,
                ),
              ),
          itemCount: images.length),
    );
  }
}

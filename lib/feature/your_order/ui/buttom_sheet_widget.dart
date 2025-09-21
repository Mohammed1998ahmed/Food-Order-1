import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

void showOrderConfirmationSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
        width: 351.w,
        height: 358.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: 351.w,
              height: 358.h,
            ),
            Container(
              width: 351.w,
              height: 320.h,
              decoration: BoxDecoration(
                  color: Colors_App.threeColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  hSpace(73),
                  Container(
                    width: 205.w,
                    height: 53.h,
                    child: Text(
                      'You Place the Order Successfully',
                      textAlign: TextAlign.center,
                      style: Styles_App.font20Blacklight,
                    ),
                  ),
                  hSpace(12),
                  Container(
                    width: 312.w,
                    child: Text(
                      'You placed the order successfully. You will get your food within 25 minutes. Thanks for using our services. Enjoy your food :)',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Styles_App.font16BlackRegular,
                    ),
                  ),
                  hSpace(30),
                  TextButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, '/menu'); // أو '/home'
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.orange,
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    child: Text(
                      'KEEP BROWSING',
                      style: Styles_App.font14blaclight
                          .copyWith(color: Colors_App.primaryColor, shadows: [
                        BoxShadow(
                            color: Colors_App.secondaryColor,
                            spreadRadius: 5,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(3, 10))
                      ]),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0.h,
              child: CircleAvatar(
                radius: 40.r,
                backgroundColor: Colors_App.primaryColor,
                child: Icon(
                  Icons.check,
                  color: Colors_App.whiteColor,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

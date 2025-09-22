import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/themes/styles.dart';

class ScanCardPage extends StatelessWidget {
  const ScanCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: 380.w,
              height: 820.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/scanCard.png'),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: 380.w,
              height: 820.h,
              color: Colors_App.blackColor.withOpacity(0.8),
              child: Center(
                child: Container(
                  width: 220.w,
                  height: 180.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white.withOpacity(0.0), // شفاف تمامًا
                    border: Border.all(color: Colors.grey),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 380.w,
              height: 820.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              context.pop();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors_App.whiteColor,
                            ))
                      ],
                    ),
                    hSpace(100),
                    Container(
                      child: Text(
                        'Scan Your Card :)',
                        style: Styles_App.font24BlacksemiBold
                            .copyWith(color: Colors_App.whiteColor),
                      ),
                    ),
                    hSpace(24),
                    Container(
                      width: 312.w,
                      height: 40.h,
                      child: Text(
                        'Just my luck, no ice. Must go faster. Did he just throw my cat out of the window',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: Styles_App.font16BlackRegular
                            .copyWith(color: Colors_App.whiteColor),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

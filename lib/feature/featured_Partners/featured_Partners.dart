import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/themes/styles.dart';

import 'data/data_local.dart';

class Featured_Partners extends StatelessWidget {
  const Featured_Partners({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              hSpace(16),
              AppBar(
                title: Text(
                  'Featured Partners',
                  style: Styles_App.font16BlacksemiBold,
                ),
                centerTitle: true,
                backgroundColor: Colors_App.whiteColor,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors_App.blackColor,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              hSpace(20),
              Container(
                  width: ScreenUtil().screenWidth,
                  height: 650.h,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.h,
                      crossAxisSpacing: 20.w,
                      childAspectRatio: 160.w / 350.h,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 160.w,
                        height: 348.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 160.w,
                                  height: 280.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          Data_Local.images[index].toString()),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 40.h,
                                  left: 14.w,
                                  child: Container(
                                    width: 140.w,
                                    height: 33.h,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.lock_clock,
                                          color: Colors_App.whiteColor,
                                          size: 16.sp,
                                        ),
                                        wSpace(4),
                                        Text(
                                          '25min',
                                          style: Styles_App.font12whiteSemiBold,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 14.h,
                                  left: 14.w,
                                  child: Container(
                                    width: 140.w,
                                    height: 33.h,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.delivery_dining,
                                          color: Colors_App.whiteColor,
                                          size: 16.sp,
                                        ),
                                        wSpace(4),
                                        Text(
                                          'Free',
                                          style: Styles_App.font12whiteSemiBold,
                                        ),
                                        wSpace(38),
                                        Container(
                                          width: 36.w,
                                          height: 20.h,
                                          margin: EdgeInsets.only(left: 10.w),
                                          decoration: BoxDecoration(
                                            color: Colors_App.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(6.r),
                                          ),
                                          child: Center(
                                              child: Text(
                                            '4.5',
                                            style:
                                                Styles_App.font12whiteSemiBold,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            hSpace(10),
                            Text(
                              'Tacos Nanchas',
                              style: Styles_App.font20Blacklight,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Chinese',
                                  style: Styles_App.font16BlackRegular.copyWith(
                                      color: Colors_App.grayLightColor),
                                ),
                                wSpace(10),
                                CircleAvatar(
                                  radius: 3.r,
                                  backgroundColor: Colors_App.grayLightColor,
                                ),
                                wSpace(10),
                                Text(
                                  'American',
                                  style: Styles_App.font16BlackRegular.copyWith(
                                      color: Colors_App.grayLightColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: Data_Local.images.length,
                  )),

              // Add your featured partners content here
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';
import 'stack_images.dart';

class All_Restaurants_Widgets extends StatelessWidget {
  const All_Restaurants_Widgets({
    super.key,
    required PageController pageController1,
    required this.images1,
    required this.currentPage1,
    this.seconds,
    required this.autoPlay,
  }) : _pageController1 = pageController1;

  final PageController _pageController1;
  final List<String> images1;
  final int currentPage1;
  final int? seconds;
  final bool autoPlay;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 284.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StackImagesWidget(
              autoPlay: autoPlay,
              seconds: seconds,
              pageController: _pageController1,
              images: images1,
              initialPage: currentPage1),
          hSpace(10),
          Text(
            'McDonald\'s',
            style: Styles_App.font20Blacklight,
          ),
          // ...existing code...
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '\$\$',
                style: Styles_App.font16BlackRegular
                    .copyWith(color: Colors_App.grayLight2Color),
              ),
              wSpace(13),
              CircleAvatar(
                radius: 3.r,
                backgroundColor: Colors_App.primaryColor,
              ),
              wSpace(10),
              Text(
                'Chinese',
                style: Styles_App.font16BlackRegular
                    .copyWith(color: Colors_App.grayLight2Color),
              ),
              wSpace(13),
              CircleAvatar(
                radius: 3.r,
                backgroundColor: Colors_App.primaryColor,
              ),
              wSpace(10),
              Text(
                'American',
                style: Styles_App.font16BlackRegular
                    .copyWith(color: Colors_App.grayLight2Color),
              ),
              wSpace(13),
              CircleAvatar(
                radius: 3.r,
                backgroundColor: Colors_App.primaryColor,
              ),
              wSpace(10),
              Text(
                'Deshi food',
                style: Styles_App.font16BlackRegular
                    .copyWith(color: Colors_App.grayLight2Color),
              ),
            ],
          ),

          hSpace(9),
          Row(
            children: [
              Container(
                width: 120.w,
                height: 20.h,
                child: Row(
                  children: [
                    Text(
                      '4.5',
                      style: Styles_App.font12whiteSemiBold.copyWith(
                        color: Colors_App.grayLight2Color,
                      ),
                    ),
                    wSpace(9),
                    Icon(
                      Icons.star,
                      color: Colors_App.primaryColor,
                      size: 15,
                    ),
                    wSpace(2),
                    Text(
                      '200+ Ratings',
                      style: Styles_App.font12whiteSemiBold.copyWith(
                        color: Colors_App.grayLight2Color,
                      ),
                    ),
                  ],
                ),
              ),
              wSpace(27),
              Container(
                width: 70.w,
                child: Row(
                  children: [
                    Icon(Icons.access_time_filled,
                        color: Colors_App.blackColor, size: 15),
                    wSpace(6),
                    Text(
                      '4.9 min',
                      style: Styles_App.font14blaclight,
                    ),
                  ],
                ),
              ),
              wSpace(14),
              CircleAvatar(
                radius: 3.r,
                backgroundColor: Colors_App.grayLight2Color,
              ),
              wSpace(8),
              Container(
                width: 70.w,
                child: Row(
                  children: [
                    Icon(Icons.delivery_dining,
                        color: Colors_App.blackColor, size: 15),
                    wSpace(6),
                    Text(
                      '4.9 min',
                      style: Styles_App.font14blaclight,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

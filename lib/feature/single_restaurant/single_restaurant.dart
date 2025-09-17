import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'data/local_Data.dart';
import 'ui/all_restaurants_widgets.dart';

// ignore: must_be_immutable
class SingleRestaurantPage extends StatelessWidget {
  SingleRestaurantPage({super.key});
  PageController pageController1 = PageController();
  int currentPage1 = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Container(
            width: 375.w,
            height: 812.h,
            child: All_Restaurants_Widgets(
                autoPlay: true,
                pageController1: pageController1,
                images1: LocalData.allImages[0],
                currentPage1: currentPage1),
          ),
        ],
      ),
    );
  }
}

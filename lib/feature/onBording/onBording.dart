import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/routers/router.dart';
import 'package:food_order/core/widgets/elevated_button_app.dart';
import '../../core/widgets/base_title_and_image.dart';
import 'ui/page_view_onBording.dart';
import 'ui/smooth_page_indicator.dart';

// ignore: must_be_immutable
class On_Bording_Screen extends StatelessWidget {
  On_Bording_Screen({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> pages = [
      {
        'image': 'assets/image/onBording1.png',
        'title': 'All your favorites',
        'text':
            'Order from the best local restaurants with easy, on-demand delivery.',
      },
      {
        'image': 'assets/image/onBording2.png',
        'title': 'Free delivery offers',
        'text':
            'Free delivery for new customers via Apple Pay and others payment methods.',
      },
      {
        'image': 'assets/image/onBording3.png',
        'title': 'Choose your food',
        'text':
            'Easily find your type of food craving and you’ll get delivery in wide range.',
      },
    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            hSpace(36),
            Base_Title_And_Image(),
            PageView_Widgets(controller: controller, pages: pages),
            hSpace(40),
            Smooth_Page_Indicator(controller: controller, pages: pages),
            hSpace(32.h),
            ElevatedButtonWidght(
              onPressed: () {
                if (controller.page! < pages.length - 1) {
                  controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                } else {
                  context.pushNamed(Routers
                      .login); // Navigate to the next screen or perform any action
                }
              },
            ),
            hSpace(39.h),
          ],
        ),
      ),
    );
  }
}

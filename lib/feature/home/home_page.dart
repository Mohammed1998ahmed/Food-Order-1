import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/routers/router.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/feature/home/data/local_data.dart';
import 'package:food_order/feature/home/ui/stack_images.dart';
import 'ui/all_restaurants_widgets.dart';
import 'ui/app_Bar_Widgets.dart';
import 'ui/list_View_Builder_Widgets.dart';
import 'ui/text_Button_See_All.dart';
import 'ui/text_offer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  final List<PageController> _pageControllers = List.generate(
    3, // عدد الـ PageView التي لديك
    (_) => PageController(),
  );

  int currentPage = 0;
  int currentPage1 = 0;
  int currentPage2 = 0;
  int currentPage3 = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                hSpace(10),
                const AppBarWidgets(),
                hSpace(15),
                Divider(color: Colors_App.greyColor, height: 1.h),
                hSpace(20),
                StackImagesWidget(
                    autoPlay: true,
                    pageController: _pageController,
                    images: LocalData.images,
                    initialPage: currentPage),
                hSpace(20),
                TextSeeAllWidgets(
                  onPressed: () {
                    context.pushNamed(Routers.featuredPartners);
                  },
                ),
                hSpace(10),
                const ListViewBuilderWidgets(images: LocalData.images),
                hSpace(34),
                const TextOffer_Widgets(),
                hSpace(10),
                TextSeeAllWidgets(
                    onPressed: () {}, title: 'Best Picks Restaurants by team'),
                hSpace(10),
                const ListViewBuilderWidgets(images: LocalData.images1),
                hSpace(34),
                TextSeeAllWidgets(onPressed: () {}, title: 'All Restaurants'),
                hSpace(24),
                Container(
                  height: 427.h,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return All_Restaurants_Widgets(
                            autoPlay: false,
                            pageController1: _pageControllers[index],
                            images1: LocalData.allImages[index],
                            currentPage1: currentPage1);
                      },
                      separatorBuilder: (context, index) => hSpace(20),
                      itemCount: 3),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

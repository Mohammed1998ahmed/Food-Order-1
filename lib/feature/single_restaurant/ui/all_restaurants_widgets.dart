import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/feature/featured_Partners/data/data_local.dart';
import '../../../core/helper/space.dart';
import '../../../core/themes/styles.dart';
import 'List_Item_Feature_Column_Widgets.dart';
import 'food_category_bar.dart';
import 'icon_and_text_widget.dart';
import 'list_item_feature_widgets.dart';
import 'ratings_text_widgets.dart';
import 'stack_images.dart';
import 'text_categorys_widget.dart';
import 'title_section_widget.dart';

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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StackImagesWidget(
              autoPlay: autoPlay,
              seconds: seconds,
              pageController: _pageController1,
              images: images1,
              initialPage: currentPage1,
            ),
            Container(
              width: 375.w,
              height: 600.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 249.w,
                        child: Text(
                          'Mayfield Bakery & Cafe',
                          style: Styles_App.font24BlackRegular,
                        ),
                      ),
                      const Text_Categorys_Widget(),
                      hSpace(9),
                      const Ratings_TExt_Widgets(),
                      hSpace(24),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon_And_Text_Widget(),
                          wSpace(20),
                          const Icon_And_Text_Widget(
                            icon: Icons.lock_clock,
                            text: '25 Minutes',
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 113.w,
                              height: 38.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.r),
                                  border: Border.all(
                                      color: Colors_App.primaryColor)),
                              child: Center(
                                child: Text(
                                  "Take away",
                                  style: Styles_App.font12whiteSemiBold
                                      .copyWith(color: Colors_App.primaryColor),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      hSpace(34),
                      Title_Section_Widget(),
                      hSpace(6),
                      List_Item_Feature_Widgets(),
                      hSpace(34),
                      FoodCategoryBar(
                        categories: const [
                          'All',
                          'Pizza',
                          'Burger',
                          'Drinks',
                          'Dessert'
                        ],
                        onCategorySelected: (index) {
                          // نفذ ما تريد عند اختيار صنف
                        },
                      ),
                      hSpace(20),
                      Title_Section_Widget(
                        title: 'Most Populars',
                      ),
                      List_Item_Feature_Column_Widgets(
                        images: Data_Local.images,
                      ),
                      hSpace(14),
                      Title_Section_Widget(
                        title: 'Sea Foods',
                      ),
                      List_Item_Feature_Column_Widgets(
                        images: Data_Local.images,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

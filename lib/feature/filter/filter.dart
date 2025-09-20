import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/widgets/elevated_button_app.dart';
import 'package:food_order/feature/filter/data/data_locel.dart';
import 'ui/app_Bar_Widget.dart';
import 'ui/categorychips_widget.dart';
import 'ui/line_text_button_clear_widget.dart';

class Filter_Page extends StatefulWidget {
  Filter_Page({super.key});

  @override
  State<Filter_Page> createState() => _Filter_PageState();
}

class _Filter_PageState extends State<Filter_Page> {
  String select_categories = 'ALL';
  String select_dietary = 'ANY';
  String select_priceRange = '\$';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              const AppBar_Widget(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Line_Text_Button_Clear_Widget(
                    name_Title: 'Categories',
                    onPressed: () {
                      setState(() {
                        select_categories = 'ALL';
                      });
                    },
                  ),
                  hSpace(16),
                  CategoryChips(
                    items: Data_Locel.categories,
                    selectedItem: select_categories,
                    onSelected: (value) {
                      setState(() {
                        select_categories = value;
                      });
                    },
                  ),
                  Line_Text_Button_Clear_Widget(
                    name_Title: 'Dietary',
                    onPressed: () {
                      setState(() {
                        select_dietary = 'ANY';
                      });
                    },
                  ),
                  hSpace(16),
                  CategoryChips(
                    items: Data_Locel.dietary,
                    selectedItem: select_dietary,
                    onSelected: (value) {
                      setState(() {
                        select_dietary = value;
                      });
                    },
                  ),
                  hSpace(34),
                  Line_Text_Button_Clear_Widget(
                    name_Title: 'price range',
                    onPressed: () {
                      setState(() {
                        select_priceRange = '\$';
                      });
                    },
                  ),
                  hSpace(16),
                  CategoryChips(
                    items: Data_Locel.priceRange,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                    radius: 3600.r,
                    selectedItem: select_priceRange,
                    onSelected: (value) {
                      setState(() {
                        select_priceRange = value;
                      });
                    },
                  ),
                  hSpace(100),
                  Center(
                    child: ElevatedButtonWidght(
                      onPressed: () {},
                      name_button: 'Apply filters'.toUpperCase(),
                      horizontal: 118.w,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

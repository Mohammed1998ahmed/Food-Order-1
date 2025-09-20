import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/themes/styles.dart';
import 'package:food_order/feature/search/data/dataLcal.dart';

class SearchCategory extends StatelessWidget {
  const SearchCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors_App.grayLight2Color,
                      ),
                      wSpace(8),
                      Text(
                        'Search',
                        style: Styles_App.font28BlacksemiBold,
                      ),
                    ],
                  ),
                ),
                hSpace(34),
                Container(
                  child: Text(
                    'Top Categories',
                    style: Styles_App.font16BlackRegular,
                  ),
                ),
                hSpace(9),
                Container(
                  width: 335.w,
                  height: 670.h,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16.h,
                      crossAxisSpacing: 16.w,
                      childAspectRatio: 160.w / 198.h,
                    ),
                    itemCount:
                        Data_Local.items.length, // استبدلها بعدد العناصر لديك
                    itemBuilder: (context, index) {
                      final item =
                          Data_Local.items[index]; // عنصر واحد من القائمة
                      return Stack(
                        children: [
                          Container(
                            width: 160.w,
                            height: 200.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              image: DecorationImage(
                                image: AssetImage(
                                    item.imagePath), // استخدم الصورة من العنصر
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 160.w,
                            height: 200.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Colors_App.blackColor.withOpacity(0.5)),
                            child: Center(
                              child: Container(
                                width: 96,
                                child: Text(
                                  item.title,
                                  textAlign: TextAlign.center,
                                  style: Styles_App.font16BlackRegular.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: Colors_App.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

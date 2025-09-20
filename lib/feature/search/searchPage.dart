import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/routers/router.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/themes/styles.dart';
import 'package:food_order/feature/search/ui/textFormField_payment_widght.dart';

import 'data/dataLcal.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final TextEditingController controller = TextEditingController();

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
                  child: Text(
                    "Search",
                    style: Styles_App.font28BlacksemiBold,
                  ),
                ),
                hSpace(20),
                TextFormField_Search_Widght(
                  controller: controller,
                  onFieldSubmitted: (p0) {
                    context.pushNamed(Routers.searchCategory);
                  },
                  hintText: 'Search on foodly',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors_App.grayLightColor,
                  ),
                ),
                hSpace(34),
                Container(
                  width: 335.w,
                  height: 658.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Top Restaurants",
                          style: Styles_App.font16BlackRegular,
                        ),
                      ),
                      Container(
                        width: 335.w,
                        height: 558.h,
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 16.h,
                            crossAxisSpacing: 16.w,
                            childAspectRatio: 160.w / 198.h,
                          ),
                          itemCount: Data_Local
                              .items.length, // استبدلها بعدد العناصر لديك
                          itemBuilder: (context, index) {
                            final item =
                                Data_Local.items[index]; // عنصر واحد من القائمة
                            return Container(
                              width: 160.w,
                              height: 198.h,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 160.w,
                                    height: 140.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      image: DecorationImage(
                                        image: AssetImage(item
                                            .imagePath), // استخدم الصورة من العنصر
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  hSpace(8),
                                  Text(
                                    item.title,
                                    style:
                                        Styles_App.font16BlacksemiBold.copyWith(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  hSpace(4),
                                  Row(
                                    children: [
                                      Text(
                                        item.priceLevel,
                                        style:
                                            Styles_App.font14blaclight.copyWith(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      wSpace(14),
                                      CircleAvatar(
                                        radius: 3.r,
                                        backgroundColor: Colors_App.greyColor,
                                      ),
                                      wSpace(9),
                                      Text(
                                        item.category,
                                        style:
                                            Styles_App.font14blaclight.copyWith(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text("SearchPage"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

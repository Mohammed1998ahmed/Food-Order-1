import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/routers/router.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/widgets/elevated_button_app.dart';
import '../../core/widgets/add_special_widget.dart';
import 'ui/all_price_widget.dart';
import 'ui/appBar_widget.dart';
import 'ui/listView_itme_widget.dart';

class Your_Order_Page extends StatelessWidget {
  const Your_Order_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            const AppBar_Widget(),
            const ListView_Itme_Widget(),
            hSpace(16),
            const All_Price_Widget(),
            hSpace(28),
            const Add_Special_Widget(
              title: 'Add more items',
              colorText: Colors_App.primaryColor,
            ),
            Divider(
              thickness: 0.5.h,
              color: Colors_App.grayLight2Color,
            ),
            const Add_Special_Widget(
              title: 'Promo code',
              colorText: Colors_App.blackColor,
            ),
            Divider(
              thickness: 0.5.h,
              color: Colors_App.grayLight2Color,
            ),
            hSpace(20),
            ElevatedButtonWidght(
              onPressed: () {
                context.pushNamed(Routers.addPaymentMethod);
              },
              name_button: 'Continue (AUD \$30)',
              horizontal: 100.w,
            )
          ],
        ),
      ),
    );
  }
}

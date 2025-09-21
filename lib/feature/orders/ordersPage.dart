import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/routers/router.dart';
import 'ui/appbar_widget.dart';
import 'ui/order_details_widget.dart';
import 'ui/proceed_payment_widget.dart';
import 'ui/text_and_clear_select_widget.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              hSpace(16),
              const Appbar_Widget(),
              hSpace(41),
              Container(
                width: 335.w,
                // height: 469.h,
                child: Column(
                  children: [
                    Text_And_Clear_Select_Widget(
                      nameTitle: 'Upcaming Orders',
                      onTap: () {},
                    ),
                    hSpace(22),
                    Container(
                      height: 300.h,
                      width: 334.w,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Order_DetAils_Widget(
                              onTap: () {
                                context.pushNamed(Routers.yourOrder,
                                    arguments: {'moveTo': false});
                              },
                              old_order: false,
                            );
                          },
                          separatorBuilder: (context, index) => hSpace(15),
                          itemCount: 30),
                    ),
                    hSpace(35),
                    const Proceed_Payment_Widget(),
                    hSpace(10),
                    Text_And_Clear_Select_Widget(
                      nameTitle: 'Past orders',
                      onTap: () {},
                    ),
                    hSpace(22),
                    Container(
                      height: 300.h,
                      width: 334.w,
                      child: ListView.separated(
                          // shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Order_DetAils_Widget(
                              onTap: () {},
                              old_order: true,
                            );
                          },
                          separatorBuilder: (context, index) => hSpace(15),
                          itemCount: 3),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

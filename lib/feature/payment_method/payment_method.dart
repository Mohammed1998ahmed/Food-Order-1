import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/routers/router.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/themes/styles.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                      )),
                  Container(
                    width: 260.w,
                    alignment: Alignment.center,
                    child: Text(
                      'Payment Methods',
                      style: Styles_App.font16BlacksemiBold,
                    ),
                  )
                ],
              ),
              hSpace(117),
              Container(
                width: 125.w,
                height: 123.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/paymentMethod.png'),
                        fit: BoxFit.cover)),
              ),
              hSpace(40),
              Container(
                child: Text(
                  "Don’t have any card :)",
                  style: Styles_App.font24BlacksemiBold,
                ),
              ),
              hSpace(30),
              Container(
                width: 287.w,
                height: 50.h,
                child: Text(
                  "It’s seems like you have not added any credit or debit card. You may easily add card.",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Styles_App.font16BlackRegular,
                ),
              ),
              hSpace(40),
              GestureDetector(
                onTap: () {
                  context.pushNamed(Routers.paymentMethodType);
                },
                child: Container(
                  width: 255.w,
                  height: 40.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors_App.primaryColor)),
                  child: Text(
                    'Add credit cards',
                    style: Styles_App.font12GrayLight
                        .copyWith(color: Colors_App.primaryColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

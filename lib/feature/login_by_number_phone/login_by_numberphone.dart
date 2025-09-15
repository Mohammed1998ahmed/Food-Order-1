import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/routers/router.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/themes/styles.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../core/widgets/elevated_button_app.dart';

class Login_By_NumberPhone extends StatefulWidget {
  const Login_By_NumberPhone({super.key});

  @override
  State<Login_By_NumberPhone> createState() =>
      _Login_By_NumberPhone_ScreenState();
}

class _Login_By_NumberPhone_ScreenState extends State<Login_By_NumberPhone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {
              context.pop();
            },
          ),
          centerTitle: true,
          title: Container(
            width: 187.w,
            child: Text(
              'Login to Tamang Food Services',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: Styles_App.font16BlacksemiBold,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 20.h,
            left: 20.w,
            right: 20.w,
            bottom: 10.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Text('Get started with Foodly',
                      style: Styles_App.font24BlackRegular),
                ),
                hSpace(10),
                // ignore: sized_box_for_whitespace
                Container(
                  width: 334.w,
                  child: Text(
                      'Enter your phone number to use foodly and enjoy your food :)',
                      textAlign: TextAlign.center,
                      style: Styles_App.font16grayRegular),
                ),
                hSpace(10),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number'.toUpperCase(),
                    labelStyle: Styles_App.font12GrayLight,
                    hintText: 'Enter phone number'.toUpperCase(),
                    hintStyle: Styles_App.font12GrayLight,
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors_App.grayLightColor),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors_App.grayLightColor),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                hSpace(160),

                ElevatedButtonWidght(
                  onPressed: () {
                    context.pushNamed(Routers.verify_PhoneNumber);
                  },
                  name_button: 'SIGN UP',
                  horizontal: 140.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

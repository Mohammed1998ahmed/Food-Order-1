import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/themes/styles.dart';
import 'package:pinput/pinput.dart';
import '../../core/widgets/elevated_button_app.dart';

class Verify_NumberPhone extends StatefulWidget {
  const Verify_NumberPhone({super.key});

  @override
  State<Verify_NumberPhone> createState() => _Verify_NumberPhone_ScreenState();
}

class _Verify_NumberPhone_ScreenState extends State<Verify_NumberPhone> {
  String pinCode = '';

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
              'Login to Foodly',
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
                  child: Text('Verify phone number',
                      style: Styles_App.font24BlackRegular),
                ),
                hSpace(10),
                // ignore: sized_box_for_whitespace
                Container(
                  width: 334.w,
                  child: Text(
                      'Enter the 4-Digit code sent to you at +610489632578',
                      textAlign: TextAlign.center,
                      style: Styles_App.font16grayRegular),
                ),
                hSpace(40),
                Pinput(
                  length: 4,
                  onChanged: (value) {
                    pinCode = value;
                  },
                  onCompleted: (value) {
                    pinCode = value;
                    // يمكنك تنفيذ أي إجراء عند اكتمال الإدخال
                  },
                  defaultPinTheme: PinTheme(
                    width: 56,
                    height: 56,
                    textStyle: Styles_App.font16BlacksemiBold,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors_App.grayLightColor,
                          width: 1.w,
                        ),
                      ),
                    ),
                  ),
                ),
                hSpace(34),

                ElevatedButtonWidght(
                  onPressed: () {},
                  name_button: 'Continue'.toUpperCase(),
                  horizontal: 130.w,
                ),
                hSpace(24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Didn\'t receive code?',
                        style: Styles_App.font12GrayLight),
                    TextButton(
                        onPressed: () {
                          print("object");
                        },
                        child: Text(
                          'Resend Again',
                          style: Styles_App.font12GrayLight.copyWith(
                            color: Colors_App.primaryColor,
                          ),
                        )),
                  ],
                ),
                hSpace(34),
                Container(
                  width: 284.w,
                  child: Text(
                      'By Signing up you agree to our Terms Conditions & Privacy Policy.',
                      textAlign: TextAlign.center,
                      style: Styles_App.font16BlackRegular),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

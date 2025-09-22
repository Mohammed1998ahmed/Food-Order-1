import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/styles.dart';
import '../../core/widgets/sign_in_with_faceBook_or_google.dart';

class SocialAccountPage extends StatelessWidget {
  const SocialAccountPage({super.key});

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
                      onPressed: () {
                        context.pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                      )),
                  Container(
                    width: 230.w,
                    alignment: Alignment.center,
                    child: Text(
                      'Add Social Accounts',
                      style: Styles_App.font16BlacksemiBold,
                    ),
                  ),
                ],
              ),
              hSpace(80),
              Container(
                width: 312.w,
                height: 100.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Add social accounts",
                      style: Styles_App.font24BlacksemiBold,
                    ),
                    hSpace(10),
                    Text(
                      "Add your social accounts for more security. You will go directly to their site.",
                      textAlign: TextAlign.center,
                      style: Styles_App.font16BlackRegular,
                    )
                  ],
                ),
              ),
              hSpace(34),
              const Sign_In_With_FaceBook_Or_Google(
                name_button: "Connect with Facebook",
              ),
              hSpace(10),
              const Sign_In_With_FaceBook_Or_Google(
                colorBackground: Colors_App.lightblueColor,
                assetName: 'assets/image/google.png',
                name_button: 'Connect with google',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/themes/styles.dart';

import '../../core/themes/colors.dart';
import '../../core/widgets/elevated_button_app.dart';

class Reset_Password extends StatelessWidget {
  const Reset_Password({super.key});

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
          title: Text(
            'Reset Password',
            style: Styles_App.font16BlacksemiBold,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Text('Reset email sent',
                      style: Styles_App.font33Blacklight),
                ),
                hSpace(10),
                // ignore: sized_box_for_whitespace
                Container(
                  width: 274.w,
                  child: Text('We have sent a instructions email to',
                      style: Styles_App.font16grayRegular),
                ),
                hSpace(10),
                Container(
                  width: 330.w,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('sajin tamang@figma.com.',
                            style: Styles_App.font16grayRegular),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text('Having problem?',
                            style: Styles_App.font16grayRegular.copyWith(
                              color: Colors_App.primaryColor,
                            )),
                      ),
                    ],
                  ),
                ),
                hSpace(33),
                ElevatedButtonWidght(
                  onPressed: () {},
                  name_button: 'Send again'.toUpperCase(),
                  horizontal: 126.w,
                  vertical: 16.h,
                ),
                hSpace(137),
                Center(
                  child: Container(
                    width: 307.w,
                    height: 238.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/ResetPassword.png'),
                            fit: BoxFit.fill)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

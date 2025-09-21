import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/themes/styles.dart';
import 'package:food_order/core/widgets/elevated_button_app.dart';
import 'package:food_order/core/widgets/text_form_field_app.dart';

class ProfileInformationPage extends StatefulWidget {
  ProfileInformationPage({super.key});

  @override
  State<ProfileInformationPage> createState() => _ProfileInformationPageState();
}

class _ProfileInformationPageState extends State<ProfileInformationPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                      'Profile Settings',
                      style: Styles_App.font16BlacksemiBold,
                    ),
                  ),
                ],
              ),
              Container(
                  width: 335.w,
                  height: 65.h,
                  child: Text_Form_Field_App(
                    controller: fullNameController,
                    hintText: 'full Name'.toUpperCase(),
                    labelText: 'full name'.toUpperCase(),
                  )),
              hSpace(16),
              Container(
                  width: 335.w,
                  height: 65.h,
                  child: Text_Form_Field_App(
                    controller: emailController,
                    hintText: 'email addrees'.toUpperCase(),
                    labelText: 'email addrees'.toUpperCase(),
                  )),
              hSpace(16),
              Container(
                  width: 335.w,
                  height: 65.h,
                  child: Text_Form_Field_App(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    hintText: 'phone number'.toUpperCase(),
                    labelText: 'phone number'.toUpperCase(),
                  )),
              hSpace(16),
              Container(
                  width: 335.w,
                  height: 65.h,
                  child: Text_Form_Field_App(
                    controller: passwordController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: obscureText,
                    suffixIcon: TextButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: Text(
                          'Change',
                          style: Styles_App.font16BlackRegular
                              .copyWith(color: Colors_App.primaryColor),
                        )),
                    hintText: 'password'.toUpperCase(),
                    labelText: 'password'.toUpperCase(),
                  )),
              hSpace(300),
              ElevatedButtonWidght(
                onPressed: () {},
                horizontal: 110.h,
                name_button: 'Change settings',
              )
            ],
          ),
        ),
      ),
    );
  }
}

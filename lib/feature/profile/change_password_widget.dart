import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';

import '../../core/helper/space.dart';
import '../../core/themes/styles.dart';
import '../../core/widgets/elevated_button_app.dart';
import '../../core/widgets/text_form_field_app.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
                    controller: passwordController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: obscureText,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye)),
                    hintText: 'password'.toUpperCase(),
                    labelText: 'password'.toUpperCase(),
                  )),
              hSpace(10),
              Container(
                  width: 335.w,
                  height: 65.h,
                  child: Text_Form_Field_App(
                    controller: newPasswordController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: obscureText,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye)),
                    hintText: 'New Password'.toUpperCase(),
                    labelText: 'New Password'.toUpperCase(),
                  )),
              hSpace(10),
              Container(
                  width: 335.w,
                  height: 65.h,
                  child: Text_Form_Field_App(
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: obscureText,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye)),
                    hintText: 'COnfirm password'.toUpperCase(),
                    labelText: 'COnfirm password'.toUpperCase(),
                  )),
              hSpace(390),
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

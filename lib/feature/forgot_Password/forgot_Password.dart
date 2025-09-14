import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/themes/styles.dart';

import '../../core/widgets/elevated_button_app.dart';
import '../../core/widgets/sign_in_with_faceBook_or_google.dart';
import '../../core/widgets/text_form_field_app.dart';

class Forgot_Password extends StatefulWidget {
  const Forgot_Password({super.key});

  @override
  State<Forgot_Password> createState() => _Forgot_Password_ScreenState();
}

class _Forgot_Password_ScreenState extends State<Forgot_Password> {
  final TextEditingController _emailController = TextEditingController();
  bool isEmailValid = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_validateEmail);
  }

  void _validateEmail() {
    setState(() {
      isEmailValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
          .hasMatch(_emailController.text);
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

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
            'Forgot Password',
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
                  child: Text('Forgot password',
                      style: Styles_App.font33Blacklight),
                ),
                hSpace(10),
                // ignore: sized_box_for_whitespace
                Container(
                  width: 274.w,
                  child: Text(
                      'Enter your email address and we will send you a reset instructions.',
                      style: Styles_App.font16grayRegular),
                ),
                hSpace(10),
                Text_Form_Field_App(
                  controller: _emailController,
                  suffixIcon: isEmailValid
                      ? const Icon(
                          Icons.check,
                          color: Colors_App.primaryColor,
                        )
                      : null,
                ),
                hSpace(34),

                ElevatedButtonWidght(
                  onPressed: () {},
                  name_button: 'Reset password',
                  horizontal: 110.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/themes/styles.dart';

import '../../core/widgets/elevated_button_app.dart';
import '../../core/widgets/sign_in_with_faceBook_or_google.dart';
import '../../core/widgets/text_form_field_app.dart';

class SignIN_Screen extends StatefulWidget {
  const SignIN_Screen({super.key});

  @override
  State<SignIN_Screen> createState() => _SignIN_ScreenState();
}

class _SignIN_ScreenState extends State<SignIN_Screen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool obscureText = false;
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
            'Sign In',
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
                  child: Text('Welcome to Tamang Food Services',
                      style: Styles_App.font33Blacklight),
                ),
                hSpace(10),
                // ignore: sized_box_for_whitespace
                Container(
                  width: 274.w,
                  child: Text(
                      'Enter your Phone number or Email address for sign in. Enjoy your food :)',
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
                hSpace(8),
                Text_Form_Field_App(
                  controller: _passwordController,
                  obscureText: obscureText,
                  hintText: 'Password',
                  labelText: 'Password',
                  suffixIcon: obscureText
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          icon: const Icon(
                            Icons.visibility_off,
                            color: Colors_App.greyColor,
                          ),
                          color: Colors_App.primaryColor,
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          icon: const Icon(
                            Icons.visibility,
                            color: Colors_App.greyColor,
                          ),
                          color: Colors_App.primaryColor,
                        ),
                ),
                hSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: Styles_App.font12GrayLight,
                        )),
                  ],
                ),
                ElevatedButtonWidght(
                  onPressed: () {},
                  name_button: 'SIGN IN',
                  horizontal: 140.w,
                ),
                hSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have account? ',
                        style: Styles_App.font12GrayLight),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Create new account.',
                          style: Styles_App.font12GrayLight.copyWith(
                            color: Colors_App.primaryColor,
                          ),
                        )),
                  ],
                ),
                hSpace(5),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child:
                            Text("Or", style: Styles_App.font16BlackRegular)),
                  ],
                ),
                hSpace(14),
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
      ),
    );
  }
}

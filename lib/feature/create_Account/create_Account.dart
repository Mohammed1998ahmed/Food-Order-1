import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/routers/router.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/themes/styles.dart';
import '../../core/widgets/elevated_button_app.dart';
import '../../core/widgets/sign_in_with_faceBook_or_google.dart';
import '../../core/widgets/text_form_field_app.dart';

class Create_Screen extends StatefulWidget {
  const Create_Screen({super.key});

  @override
  State<Create_Screen> createState() => _Create_Screen_ScreenState();
}

class _Create_Screen_ScreenState extends State<Create_Screen> {
  final TextEditingController _fullNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool obscureText = false;
  bool isEmailValid = false;
  bool isNameValid = false; // أضف هذا المتغير

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_validateEmail);
    _fullNameController.addListener(_validateName); // أضف هذا السطر
  }

  void _validateEmail() {
    setState(() {
      isEmailValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
          .hasMatch(_emailController.text);
    });
  }

  void _validateName() {
    setState(() {
      isNameValid = _fullNameController.text.trim().isNotEmpty;
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _fullNameController.dispose(); // أضف هذا السطر
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
            'Create Account',
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
                  child: Text('Create Account',
                      style: Styles_App.font33Blacklight),
                ),
                hSpace(10),
                // ignore: sized_box_for_whitespace
                Container(
                  width: 290.w,
                  child: Text('Enter your Name, Email and Password ',
                      style: Styles_App.font16grayRegular),
                ),
                Row(
                  children: [
                    Text('for sign up.', style: Styles_App.font12GrayLight),
                    TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: Text(
                          'Already have account?',
                          style: Styles_App.font12GrayLight.copyWith(
                            color: Colors_App.primaryColor,
                          ),
                        )),
                  ],
                ),
                hSpace(10),
                Text_Form_Field_App(
                  controller: _fullNameController,
                  hintText: 'Full Name'.toUpperCase(),
                  labelText: 'Full Name'.toUpperCase(),
                  suffixIcon: isNameValid
                      ? const Icon(
                          Icons.check,
                          color: Colors_App.primaryColor,
                        )
                      : null,
                ),
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
                hSpace(24),

                ElevatedButtonWidght(
                  onPressed: () {
                    context.pushNamed(Routers.Login_By_NumberPhone);
                  },
                  name_button: 'SIGN UP',
                  horizontal: 140.w,
                ),
                hSpace(24),
                Center(
                  child: Container(
                    width: 284.w,
                    height: 50.h,
                    child: Text(
                        'By Signing up you agree to our Terms Conditions & Privacy Policy.',
                        textAlign: TextAlign.center,
                        style: Styles_App.font16BlackRegular),
                  ),
                ),

                hSpace(30),

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

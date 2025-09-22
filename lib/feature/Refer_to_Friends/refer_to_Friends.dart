import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';
import '../../core/helper/space.dart';
import '../../core/themes/colors.dart';
import '../../core/themes/styles.dart';

class ReferToFriendsPage extends StatelessWidget {
  const ReferToFriendsPage({super.key});
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
                      'Refer to Friends',
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
                  "Refer a Friend, Get \$10",
                  style: Styles_App.font24BlacksemiBold,
                ),
              ),
              hSpace(30),
              Container(
                width: 287.w,
                height: 50.h,
                child: Text(
                  "Get \$10 in credits when someone sign up using your refer link",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: Styles_App.font16BlackRegular,
                ),
              ),
              hSpace(40),
              GestureDetector(
                onTap: () {
                  Share.share('https://ui8.net/76738b');
                },
                child: Container(
                  width: 255.w,
                  height: 40.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors_App.lightGreyColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.share_sharp,
                        color: Colors_App.blackColor,
                      ),
                      Text(
                        'https://ui8.net/76738b',
                        style: Styles_App.font12GrayLight
                            .copyWith(color: Colors_App.blackColor),
                      ),
                    ],
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

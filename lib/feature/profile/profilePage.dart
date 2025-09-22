import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/routers/router.dart';
import 'package:food_order/core/themes/styles.dart';
import 'ui/profile_title_widget.dart';
import 'ui/switchListTile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool pushNotifications = true;
  bool smsNotifications = false;
  bool promoNotifications = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Account Settings',
                    style: Styles_App.font28BlacksemiBold,
                  ),
                ),
                hSpace(14),
                Container(
                  child: Text(
                    'Update your settings like notifications, payments, profile edit etc.',
                    style: Styles_App.font16BlackRegular,
                  ),
                ),
                hSpace(24),
                Container(
                    width: 335.w,
                    height: 432.h,
                    child: Column(
                      children: [
                        ProfileTile(
                          icon: Icons.person,
                          title: 'Profile Information',
                          subtitle: 'Change your account information',
                          onTap: () {
                            context.pushNamed(Routers.profileInformation);
                          },
                        ),
                        ProfileTile(
                          icon: Icons.lock,
                          title: 'Change Password',
                          subtitle: 'Update your login credentials',
                          onTap: () {
                            context.pushNamed(Routers.profileChangePassword);
                          },
                        ),
                        ProfileTile(
                          icon: Icons.credit_card,
                          title: 'Payment Methods',
                          subtitle: 'Add credit/debit cards',
                          onTap: () {
                            context.pushNamed(Routers.paymentMethod);
                          },
                        ),
                        ProfileTile(
                          icon: Icons.location_on,
                          title: 'Locations',
                          subtitle: 'Manage your delivery addresses',
                          onTap: () {
                            context.pushNamed(Routers.profileLocation);
                          },
                        ),
                        ProfileTile(
                          icon: Icons.share,
                          title: 'Refer to Friends',
                          subtitle: 'Invite friends and earn rewards',
                          onTap: () {
                            Navigator.pushNamed(context, '/referral');
                          },
                        ),
                      ],
                    )),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // padding: const EdgeInsets.all(16),
                    children: [
                      Text('NOTIFICATIONS',
                          style: Styles_App.font16BlacksemiBold),
                      hSpace(10),
                      SwitchListTile_Widget(
                        pushNotifications: pushNotifications,
                        onChanged: (bool val) {
                          setState(() => pushNotifications = val);
                        },
                        nameTiile: 'Push Notifications',
                        nameSubtitle: 'For daily update you will get it',
                      ),
                      SwitchListTile_Widget(
                        pushNotifications: smsNotifications,
                        onChanged: (bool val) {
                          setState(() => smsNotifications = val);
                        },
                        nameTiile: 'SMS Notifications',
                        nameSubtitle: 'For daily update you will get it',
                      ),
                      SwitchListTile_Widget(
                        pushNotifications: promoNotifications,
                        onChanged: (bool val) {
                          setState(() => promoNotifications = val);
                        },
                        nameTiile: 'Promotional Notifications',
                        nameSubtitle: 'For daily update you will get it',
                      ),
                      hSpace(24),
                      Text('MORE', style: Styles_App.font16BlacksemiBold),
                      hSpace(10),
                      ProfileTile(
                        icon: Icons.star,
                        onTap: () {},
                        subtitle: 'Rate us on Play Store or App Store',
                        title: 'Rate Us',
                      ),
                      ProfileTile(
                        icon: Icons.book,
                        onTap: () {},
                        subtitle: 'Frequently asked questions',
                        title: 'FAQ',
                      ),
                      ProfileTile(
                        icon: Icons.logout,
                        onTap: () {},
                        title: 'Logout',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

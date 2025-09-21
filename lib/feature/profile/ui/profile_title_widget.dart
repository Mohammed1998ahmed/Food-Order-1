import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/styles.dart';

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15.h,
      ),
      child: Row(
        children: [
          Icon(icon, size: 28),
          const SizedBox(width: 16),
          Expanded(
            child: subtitle == null
                ? Text(title, style: Styles_App.font16BlacksemiBold)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: Styles_App.font16BlacksemiBold),
                      const SizedBox(height: 10), // بديل لـ hSpace(10)
                      Text(subtitle!, style: Styles_App.font14blaclight),
                    ],
                  ),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: onTap,
          ),
        ],
      ),
    );
  }
}

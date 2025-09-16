import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class ListViewBuilderWidgets extends StatelessWidget {
  const ListViewBuilderWidgets({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 254.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 200.w,
            height: 254.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200.w,
                  height: 160.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                hSpace(10),
                Text(
                  'Krispy Creme',
                  style: Styles_App.font20Blacklight,
                ),
                Text(
                  'St Georgece Terrace, Perth',
                  style: Styles_App.font16BlackRegular
                      .copyWith(color: Colors_App.grayLightColor),
                ),
                hSpace(5),
                Row(
                  children: [
                    Container(
                      width: 36.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                          color: Colors_App.primaryColor,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Center(
                          child: Text(
                        '4.5',
                        style: Styles_App.font12whiteSemiBold,
                      )),
                    ),
                    wSpace(5),
                    Text(
                      '4.9 min',
                      style: Styles_App.font14blaclight,
                    ),
                    wSpace(10),
                    CircleAvatar(
                      radius: 3.r,
                      backgroundColor: Colors_App.grayLightColor,
                    ),
                    Text(
                      ' Free delivery',
                      style: Styles_App.font12GrayLight,
                    ),
                  ],
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => wSpace(14),
        itemCount: images.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/styles.dart';

class PageView_Widgets extends StatelessWidget {
  const PageView_Widgets({
    super.key,
    required this.controller,
    required this.pages,
  });

  final PageController controller;
  final List<Map<String, String>> pages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300.w,
                height: 300.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(pages[index]['image']!),
                        fit: BoxFit.fitHeight)),
              ),
              hSpace(40),
              Container(
                width: 312.w,
                height: 110.h,
                child: Column(
                  children: [
                    Text(
                      pages[index]['title']!,
                      style: Styles_App.font24BlackRegular,
                      textAlign: TextAlign.center,
                    ),
                    hSpace(20),
                    Text(
                      pages[index]['text']!,
                      style: Styles_App.font16BlackRegular,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

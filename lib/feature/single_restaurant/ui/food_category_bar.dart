import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class FoodCategoryBar extends StatefulWidget {
  final List<String> categories;
  final ValueChanged<int>? onCategorySelected;

  const FoodCategoryBar({
    super.key,
    required this.categories,
    this.onCategorySelected,
  });

  @override
  State<FoodCategoryBar> createState() => _FoodCategoryBarState();
}

class _FoodCategoryBarState extends State<FoodCategoryBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              if (widget.onCategorySelected != null) {
                widget.onCategorySelected!(index);
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: isSelected
                    ? Colors_App.primaryColor
                    : Colors_App.whiteColor,
                borderRadius: BorderRadius.circular(24.r),
                border: Border.all(
                  color: isSelected
                      ? Colors_App.primaryColor
                      : Colors_App.greyColor,
                ),
              ),
              child: Text(
                widget.categories[index],
                style: Styles_App.font12whiteSemiBold.copyWith(
                  color: isSelected
                      ? Colors_App.whiteColor
                      : Colors_App.primaryColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/themes/colors.dart';

class StackImagesWidget extends StatefulWidget {
  const StackImagesWidget({
    super.key,
    required this.pageController,
    required this.images,
    required this.initialPage,
    this.seconds,
    required this.autoPlay,
  });

  final PageController pageController;
  final List<String> images;
  final int initialPage;
  final int? seconds;
  final bool autoPlay;

  @override
  State<StackImagesWidget> createState() => _StackImagesWidgetState();
}

class _StackImagesWidgetState extends State<StackImagesWidget> {
  late int currentPage;

  @override
  void initState() {
    super.initState();
    currentPage = widget.initialPage;
    // التنقل التلقائي بين الصور
    widget.autoPlay == true
        ? Future.doWhile(() async {
            await Future.delayed(Duration(seconds: widget.seconds ?? 3));
            if (widget.pageController.hasClients) {
              int nextPage = (currentPage + 1) % widget.images.length;
              widget.pageController.animateToPage(
                nextPage,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
              setState(() {
                currentPage = nextPage;
              });
            }
            return true;
          })
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        SizedBox(
          height: 280.h,
          child: PageView.builder(
            controller: widget.pageController,
            itemCount: widget.images.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return ClipRRect(
                child: Image.asset(
                  widget.images[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            },
          ),
        ),
        Positioned(
          top: 10.h,
          right: 10.w,
          left: 10.w,
          child: AppBar(
            backgroundColor: Colors.transparent,
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors_App.whiteColor,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share_outlined,
                    color: Colors_App.whiteColor,
                  )),
              wSpace(10),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors_App.whiteColor,
                  )),
            ],
          ),
        ),
        Positioned(
          bottom: 10.h,
          right: 20.w,
          child: AnimatedSmoothIndicator(
            activeIndex: currentPage,
            count: widget.images.length,
            effect: WormEffect(
              dotHeight: 5.h,
              dotWidth: 10.w,
              activeDotColor: Colors_App.whiteColor,
              dotColor: Colors_App.whiteColor.withOpacity(0.5),
            ),
            onDotClicked: (index) {
              // widget.pageController.animateToPage(
              //   index,
              //   duration: const Duration(milliseconds: 500),
              //   curve: Curves.easeInOut,
              // );
            },
          ),
        ),
      ],
    );
  }
}

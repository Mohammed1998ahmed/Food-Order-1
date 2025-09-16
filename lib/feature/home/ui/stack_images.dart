import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          height: 180.h,
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
                borderRadius: BorderRadius.circular(16),
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
          bottom: 10.h,
          right: 20.w,
          child: AnimatedSmoothIndicator(
            activeIndex: currentPage,
            count: widget.images.length,
            effect: WormEffect(
              dotHeight: 8.h,
              dotWidth: 15.w,
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

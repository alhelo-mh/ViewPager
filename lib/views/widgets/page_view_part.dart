import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewPager extends StatefulWidget {
  const ViewPager({super.key});

  @override
  State<ViewPager> createState() => _ViewPagerState();
}

class _ViewPagerState extends State<ViewPager> {
  int isSelect = 0;
  final PageController _pageController = PageController(viewportFraction: 0.85);
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    const Duration autoScrollDuration = Duration(seconds: 3);

    _timer = Timer.periodic(autoScrollDuration, (timer) {
      if (isSelect < 3) {
        isSelect++;
        _pageController.animateToPage(
          isSelect,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        isSelect = 0;
        _pageController.jumpToPage(isSelect);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          height: 470.h,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                isSelect = value;
              });
            },
            controller: _pageController,
            itemCount: 4,
            itemBuilder: (context, index) {
              double t = isSelect == index ? 1 : 0.87;
              return TweenAnimationBuilder(
                duration: const Duration(milliseconds: 300),
                tween: Tween(begin: t, end: t),
                curve: Curves.ease,
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value,
                    child: child,
                  );
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://devstorageacco.blob.core.windows.net/pre-prod/_NOR9450_22092019153631.jpg'),
                          fit: BoxFit.fill)),
                  child: DefaultTextStyle(
                      style: const TextStyle(color: Colors.white),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: 100.h,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(143, 44, 44, 44),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  topRight: Radius.circular(0),
                                  topLeft: Radius.circular(50),
                                )),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'נותן מתנה',
                                    style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    'בואו נראה אם תצליח',
                                    style: TextStyle(fontSize: 20.sp),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top: 335.h,
                              right: 10.w,
                              child: Image.asset(
                                'assets/images/gift.png',
                                width: 69.w,
                              )),
                        ],
                      )),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

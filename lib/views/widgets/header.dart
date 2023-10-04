import 'package:coka_cola_task/utils/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderPart extends StatelessWidget {
  const HeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      height: 100,
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              width: 108.w,
              height: 34.h,
              child: Image.asset('assets/images/org_logo.png')),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    '46',
                    style: TextStyle(color: AppColors.white),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                      width: 17, child: Image.asset('assets/images/cap.png'))
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  const Text(
                    '  0',
                    style: TextStyle(color: AppColors.white),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  SvgPicture.asset(
                    'assets/icons/doing_good_icon.svg',
                    color: AppColors.white,
                    width: 17,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            width: 7.w,
          ),
          Image.asset(
            'assets/images/user.png',
            color: AppColors.lightGray,
            width: 55.w,
            height: 55.h,
          ),
        ],
      ),
    );
  }
}

import 'package:coka_cola_task/providers/app_provider.dart';
import 'package:coka_cola_task/utils/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FloatingButtonWidget extends StatefulWidget {
  const FloatingButtonWidget({super.key});

  @override
  State<FloatingButtonWidget> createState() => _FloatingButtonWidgetState();
}

class _FloatingButtonWidgetState extends State<FloatingButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      shape: const CircularNotchedRectangle(),
      notchMargin: 17,
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      padding: const EdgeInsets.all(20),
      height: 90,
      shadowColor: Colors.amber,
      surfaceTintColor: Colors.blue,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: () {
              Provider.of<AppProvider>(context, listen: false).changeBottom(0);
              Provider.of<AppProvider>(context, listen: false).currentIndex = 0;
              setState(() {});
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/profile_icon.svg',
                    color: Provider.of<AppProvider>(context, listen: false)
                                .currentIndex ==
                            0
                        ? AppColors.red
                        : AppColors.white),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'אזור אישי',
                  style: TextStyle(fontSize: 9.sp, color: AppColors.white),
                )
              ],
            ),
          ),
          SizedBox(
            width: 32.w,
          ),
          GestureDetector(
            onTap: () {
              Provider.of<AppProvider>(context, listen: false).changeBottom(1);
              Provider.of<AppProvider>(context, listen: false).currentIndex = 1;
              setState(() {});
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/doing_good_icon.svg',
                    color: Provider.of<AppProvider>(context, listen: false)
                                .currentIndex ==
                            1
                        ? AppColors.red
                        : AppColors.white),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'עושים טוב',
                  style: TextStyle(fontSize: 9.sp, color: AppColors.white),
                )
              ],
            ),
          ),
          SizedBox(
            width: 83.w,
          ),
          GestureDetector(
            onTap: () {
              Provider.of<AppProvider>(context, listen: false).changeBottom(2);
              Provider.of<AppProvider>(context, listen: false).currentIndex = 2;
              setState(() {});
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/group_280.svg',
                    color: Provider.of<AppProvider>(context, listen: false)
                                .currentIndex ==
                            2
                        ? AppColors.red
                        : AppColors.white),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'חנות המתנות',
                  style: TextStyle(fontSize: 9.sp, color: AppColors.white),
                )
              ],
            ),
          ),
          SizedBox(
            width: 32.w,
          ),
          GestureDetector(
            onTap: () {
              Provider.of<AppProvider>(context, listen: false).changeBottom(3);
              Provider.of<AppProvider>(context, listen: false).currentIndex = 3;
              setState(() {});
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/feed_icon.svg',
                    color: Provider.of<AppProvider>(context, listen: false)
                                .currentIndex ==
                            3
                        ? AppColors.red
                        : AppColors.white),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'בית',
                  style: TextStyle(fontSize: 9.sp, color: AppColors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

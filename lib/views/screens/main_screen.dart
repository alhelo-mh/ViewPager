import 'package:coka_cola_task/providers/app_provider.dart';
import 'package:coka_cola_task/utils/colors/color.dart';
import 'package:coka_cola_task/views/widgets/floating_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, x) {
      return Consumer<AppProvider>(builder: (context, provider, x) {
        return Container(
          decoration: const BoxDecoration(gradient: AppColors.gradientAddStory),
          child: SafeArea(
            child: Scaffold(
                body: provider.screens[provider.currentIndex],
                backgroundColor: Colors.transparent,
                floatingActionButton: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      onPressed: () {},
                      focusElevation: 0,
                      child: Image.asset(
                        'assets/images/cta_bottle.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                bottomNavigationBar: const FloatingButtonWidget()),
          ),
        );
      });
    });
  }
}

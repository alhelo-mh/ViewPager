import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoingGoodScreen extends StatelessWidget {
  const DoingGoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(child: Text('DoingGoodScreen',style: TextStyle(fontSize: 24.sp,color: Colors.white),)),
    );
  }
}
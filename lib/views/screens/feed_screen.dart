import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(child: Text('FeedScreen',style: TextStyle(fontSize: 24.sp,color: Colors.white))),
    );
  }
}
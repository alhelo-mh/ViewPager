import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text('ProfileScreen',
              style: TextStyle(fontSize: 24.sp, color: Colors.white))),
    );
  }
}

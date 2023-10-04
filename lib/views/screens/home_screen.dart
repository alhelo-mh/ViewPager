import 'package:coka_cola_task/views/widgets/header.dart';
import 'package:coka_cola_task/views/widgets/page_view_part.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [HeaderPart(), ViewPager()]);
  }
}
import 'dart:developer';

import 'package:coka_cola_task/views/screens/doing_good_screen.dart';
import 'package:coka_cola_task/views/screens/feed_screen.dart';
import 'package:coka_cola_task/views/screens/home_screen.dart';
import 'package:coka_cola_task/views/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  AppProvider() {
    log('AppProvider');
  }
  int currentIndex = 3;

  List<dynamic> screens = [
    const ProfileScreen(),
    const DoingGoodScreen(),
    const FeedScreen(),
    const HomeScreen(),
  ];
  void changeBottom(int index) {
    currentIndex = index;
    notifyListeners();
  }
}

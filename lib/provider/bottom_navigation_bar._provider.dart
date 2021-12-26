import 'package:booking_hotel/screens/home_page/home_page.dart';
import 'package:booking_hotel/screens/notifications_page/notifications_page.dart';
import 'package:booking_hotel/screens/profile_page/profile_page.dart';
import 'package:booking_hotel/screens/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  final screens = [
    const HomePage(),
    SearchPage(),
     const NotificationsPage(),
    const ProfilePage(),
  ];
  set currentTab(int tab) {
    _currentIndex = tab;
    notifyListeners();
  }

  void onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  int get currentTab => _currentIndex;
  get currentScreens => screens[_currentIndex];
}
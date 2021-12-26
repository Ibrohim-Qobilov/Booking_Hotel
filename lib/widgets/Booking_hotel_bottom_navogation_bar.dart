
import 'package:booking_hotel/core/constants/colors.dart';
import 'package:booking_hotel/core/constants/icons.dart';
import 'package:booking_hotel/provider/bottom_navigation_bar._provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HotelBottomNavBar extends StatelessWidget {
  BottomNavBarProvider? model;
  HotelBottomNavBar({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomNavBarProvider>();
    // BottomProvier? model;
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: _context.currentTab == 0 ? SvgPicture.asset(IconName.homeActive,color: MainColor.kPeach,) : SvgPicture.asset(IconName.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 1 ? SvgPicture.asset(IconName.searchActive,color: MainColor.kPeach,) : SvgPicture.asset(IconName.search),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 2 ? SvgPicture.asset(IconName.notificationActive,color: MainColor.kPeach,) : SvgPicture.asset(IconName.notification),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 3 ? SvgPicture.asset(IconName.profileActive,color: MainColor.kPeach,) : SvgPicture.asset(IconName.profile),
          label: '',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _context.currentTab,
      onTap: (int idx) {
        model!.currentTab = idx;
      },
    );
  }
}
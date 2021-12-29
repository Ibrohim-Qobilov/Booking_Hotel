// ignore_for_file: file_names
import 'package:booking_hotel/core/constants/icons.dart';
import 'package:booking_hotel/provider/bottom_navigation_bar._provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/src/provider.dart';

import '../core/components/export_page.dart';

// ignore: must_be_immutable
class HotelBottomNavBar extends StatelessWidget {
  BottomNavBarProvider? model;
  HotelBottomNavBar({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomNavBarProvider>();
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: _context.currentTab == 0 ? SvgPicture.asset(IconName.homeActive,color: MainColor.pink,) : SvgPicture.asset(IconName.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 1 ? SvgPicture.asset(IconName.searchActive,color: MainColor.pink) : SvgPicture.asset(IconName.search),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 2 ? SvgPicture.asset(IconName.notificationActive,color: MainColor.pink) : SvgPicture.asset(IconName.notification),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 3 ? SvgPicture.asset(IconName.profileActive,color: MainColor.pink,) : SvgPicture.asset(IconName.profile),
          label: '',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      enableFeedback: true,
      currentIndex: _context.currentTab,
      onTap: (int idxex) {
        model!.currentTab = idxex;
      },
    );
}
  }
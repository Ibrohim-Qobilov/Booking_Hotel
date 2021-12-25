import 'package:booking_hotel/core/constants/colors.dart';
import 'package:booking_hotel/provider/bottom_navigation_bar._provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:booking_hotel/core/components/size_config.dart';
import 'package:booking_hotel/core/constants/icons.dart';
import 'package:flutter/material.dart';


class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({Key? key}) : super(key: key);
  late BottomNavBarProvider _provider;

  @override
  Widget build(BuildContext context) {
    
    SizeConfig().init(context);
    _provider = context.watch();
    return Scaffold(bottomNavigationBar: SizedBox(
      height: getProportionateScreenHeight(83.0),
      child: BottomNavigationBar(
        selectedItemColor: constColor.kPeach,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _provider.currentIndex,
        onTap: _provider.onTap,
        items: _bottomNavigationBarItems(),
      ),
    ),);
  }

  List<BottomNavigationBarItem> _bottomNavigationBarItems() {
    return <BottomNavigationBarItem>[
      _setBottomNavigationBarItem(
        _provider.currentIndex == 0
            ? IconName.homeActive                                                                                                                                                                                                                                                               
            : IconName.home,
      ),
      _setBottomNavigationBarItem(
        
        _provider.currentIndex == 1
            ? IconName.searchActive
            : IconName.search,
      ),
      _setBottomNavigationBarItem(
        
        _provider.currentIndex == 2
            ? IconName.notificationActive
            : IconName.notification,
      ),
      _setBottomNavigationBarItem(
        _provider.currentIndex == 3
            ? IconName.profileActive
            : IconName.profile,
      ),
    ];
  }

  BottomNavigationBarItem _setBottomNavigationBarItem(String assetIcon) =>
      BottomNavigationBarItem(icon: SvgPicture.asset(assetIcon), label: "");
}
import 'package:booking_hotel/core/constants/icons.dart';
import 'package:booking_hotel/screens/home_page/home_page.dart';
import 'package:booking_hotel/screens/notifications_page/notifications_page.dart';
import 'package:booking_hotel/screens/profile_page/profile_page.dart';
import 'package:booking_hotel/screens/search_page/search_page.dart';
import 'package:flutter/material.dart';


class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  _FurnitueBottomNarBarState createState() => _FurnitueBottomNarBarState();
}

class _FurnitueBottomNarBarState extends State<MyBottomBar> {
  int _furnitureAppIndexOfIcon = 0;
  List<Widget> _listOfPage = [];
  Widget? homePage, search, notificationPage,  profilePage;
  

  @override
  void initState() {
    homePage =  HomePage();
    search =  SearchPage();
    notificationPage =  NotificationsPage();
    profilePage =  ProfilePage();
   
    _listOfPage = [
      homePage!,
     search!,
      notificationPage!,
      profilePage!,
      
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listOfPage[_furnitureAppIndexOfIcon],
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: _furnitureAppIndexOfIcon == 0 ? IconName.homeActive : IconName.home,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: _furnitureAppIndexOfIcon == 1 ? IconName.searchActive : IconName.search,
          label: "",
        ),
        BottomNavigationBarItem(
          icon:
              _furnitureAppIndexOfIcon == 2 ? IconName.notificationActive : IconName.notification,
          label: "",
        ),
        
        BottomNavigationBarItem(
          icon: _furnitureAppIndexOfIcon == 3
              ? IconName.profileActive
              : IconName.profile,
          label: "",
        ),
      ],
      type: BottomNavigationBarType.shifting,
      iconSize: 20,
      elevation: 20,
      onTap: (index) {
        setState(() {
          _furnitureAppIndexOfIcon = index;
        });
      },
    );
  }
}
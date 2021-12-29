

import '../core/components/export_page.dart';

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
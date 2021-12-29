import 'package:booking_hotel/provider/bottom_navigation_bar._provider.dart';
import 'package:booking_hotel/widgets/booking_hotel_bottom_navogation_bar.dart';
import 'package:provider/provider.dart';

import '../core/components/export_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavBarProvider>(
      create: (context) => BottomNavBarProvider(),
      child: Consumer<BottomNavBarProvider>(
        builder: (context, model, child) => Scaffold(
          body: model.currentScreens,
          bottomNavigationBar: HotelBottomNavBar(
            model: model,
          ),
        ),
      ),
      // builder: (context) => BottomProvier(),
    );
  }
}
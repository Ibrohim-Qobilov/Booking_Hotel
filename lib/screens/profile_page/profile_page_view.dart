import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/screens/help_page/help_page.dart';
import 'package:booking_hotel/screens/payment_page/payment_page.dart';
import 'package:booking_hotel/screens/promotions_page/promotions_page.dart';
import 'package:booking_hotel/screens/setting_page/setting_page.dart';
import 'package:booking_hotel/screens/your_favorite_page/your_favorite_page.dart';
import './profile_page_view_model.dart';

class ProfilePageView extends ProfilePageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      backgroundColor: MainColor.kWhite,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
            profileMethod(
                "https://images.unsplash.com/photo-1640558378987-74741517e220?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMjF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                "Nimadur ism"),
            settingMethod(IconName.yourFavorite, "Your Favorite", YourFavoritePage()),
            settingMethod(IconName.promotions, "Payments", PaymentPage()),
            settingMethod(IconName.help, "Help", HelpPage()),
            settingMethod(IconName.promotions, "Promotions", PromotionsPage()),
            settingMethod(IconName.setting, "Settings", SettingPage()),
          ],
        ),
      ),
    );
  }

  
}

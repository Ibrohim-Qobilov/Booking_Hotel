import 'package:booking_hotel/core/components/const.dart';
import 'package:booking_hotel/core/components/export_page.dart';

class ThemeProvider extends ChangeNotifier{
  static bool theme = true;

  void changeTheme(){
    theme = false;
    Types.valueoftheme = true;
    notifyListeners();
  }
  void returnTheme(){
    theme = true;
    Types.valueoftheme = false;
    notifyListeners();
  }
}

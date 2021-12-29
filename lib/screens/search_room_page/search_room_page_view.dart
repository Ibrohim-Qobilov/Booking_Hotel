import 'package:booking_hotel/core/components/drop_down_view.dart';
import 'package:booking_hotel/core/components/export_page.dart';
import './search_room_page_view_model.dart';

class SearchRoomPageView extends SearchRoomPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
        backgroundColor: MainColor.kOffWhite,
        body: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            drowDOnwMethod(context),
           
          ],
        ));
  }

  
}

import 'package:booking_hotel/core/components/export_page.dart';

import './search_room_page_view_model.dart';

class SearchRoomPageView extends SearchRoomPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
        backgroundColor: MainColor.kWhite,
        body: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            drowDOnwMethod(context),
            divider(),
            bottomView(),
            divider(),
          ],
        ));
  }
}

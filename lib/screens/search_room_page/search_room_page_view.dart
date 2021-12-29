import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/core/components/list_view.dart';
import 'package:booking_hotel/core/components/text_view.dart';

import './search_room_page_view_model.dart';

class SearchRoomPageView extends SearchRoomPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
        backgroundColor: MainColor.kWhite,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            drowDOnwMethod(context),
            divider(),
            bottomView(),
            divider(),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(10.0),
                  top: getProportionateScreenHeight(20.0)),
              child: textView("Near the beacher", MainColor.kBlack19, 25.0,
                  "ass", FontWeight.bold),
            ),
            SizedBox(
                height: getProportionateScreenHeight(150.0),
                width: MediaQuery.of(context).size.width,
                child: lisviewbuilder(
                    "https://images.unsplash.com/photo-1586611292717-f828b167408c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                    'hotels uzbekistan'))
          ],
        ));
  }
}

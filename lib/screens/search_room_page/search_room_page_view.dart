import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/screens/filter_page/filter_page.dart';
import 'package:booking_hotel/screens/map_page/map_page.dart';
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: getProportionateScreenHeight(45.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: MainColor.kWhite.withOpacity(0.1),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textBottom("Filter",FilterPage()),
                  textBottom("Map", MapPage())
                ],
              ),
            ),
            divider(),
          ],
        ));
  }

  
}

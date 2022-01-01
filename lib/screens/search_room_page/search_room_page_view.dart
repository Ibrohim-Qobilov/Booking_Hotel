import 'package:booking_hotel/core/components/container_view.dart';
import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/core/components/list_view.dart';
import 'package:booking_hotel/core/components/text_view.dart';
import 'package:booking_hotel/models/hotel_model.dart';
import 'package:booking_hotel/screens/hotels_page/hotels_page.dart';

import './search_room_page_view_model.dart';

class SearchRoomPageView extends SearchRoomPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
        backgroundColor: MainColor.kWhite,
        body: FutureBuilder(builder: (context, AsyncSnapshot<List<HotelModel>> snap) {
          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snap.hasError) {
            return const Text("Error");
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  drowDonwMethod(context),
                  divider(),
                  bottomView(),
                  divider(),
                  Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(10.0),
                        top: getProportionateScreenHeight(20.0)),
                    child: textView("Near the beacher", MainColor.kBlack19,
                        25.0, "ass", FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HotelsPage()));
                    },
                    child: SizedBox(
                        height: getProportionateScreenHeight(150.0),
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(itemBuilder: (_, __) {
                          return SizedBox(
                            height: getProportionateScreenHeight(150.0),
                            child: lisviewbuilder(
                              
                                snap.data![__].imageMountain.toString(),
                                snap.data![__].nameMountain.toString()),
                          );
                        })),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HotelsPage()));
                    },
                    child: Container(
                      height: getProportionateScreenHeight(900),
                      width: MediaQuery.of(context).size.width,
                      color: MainColor.kGreyDark,
                      child: ListView.builder(
                        itemBuilder: (_, __) {
                          return containerView(
                              "https://unsplash/rendom/index",
                              " * 4.4",
                              "Hotel uzbekistan",
                              "free food",
                              "gym",
                              "free",
                              "1000");
                        },
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        }));
  }
}

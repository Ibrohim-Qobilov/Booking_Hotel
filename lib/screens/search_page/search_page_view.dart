import 'package:booking_hotel/core/components/container_view.dart';
import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/core/components/text_form_feild.dart';
import 'package:booking_hotel/screens/room_page/room_page.dart';
import 'package:booking_hotel/services/hotel_services.dart';

import './search_page_view_model.dart';

class SearchPageView extends SearchPageViewModel {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // Replace this with your build function
    return Scaffold(
      backgroundColor: MainColor.kWhite,
      body: FutureBuilder(
        future: HotelService().getHotel(),
        builder: (context, AsyncSnapshot<List<HotelModel>> snap) {
          // debugPrint(snap.data.toString());
          if (!snap.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else if (snap.hasError) {
            return const Text("Error");
          } else {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: getProportionateScreenHeight(20),),
                  Container(
                    
                    height: getProportionateScreenHeight(70.0),
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(10),
                      bottom: getProportionateScreenHeight(10.0),
                      left: getProportionateScreenWidth(10),
                      right: getProportionateScreenWidth(10),
                    ),
                    child: textFormfield(
                        "Search", TextFormfieldProvider.dateController),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  drowDonwMethod(context),
                  divider(),
                  bottomView(),
                  divider(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => RoomPage()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: MainColor.kGrey,
                      child: ListView.builder(
                        itemBuilder: (_, __) {
                          return containerView(
                              snap.data![__].imageHotel.toString(),
                              " * 4.4",
                              snap.data![__].nameHotel.toString(),
                              snap.data![__].aboutHotel,
                              "gym",
                              "free",
                              snap.data![__].price.toString());
                        },
                        scrollDirection: Axis.vertical,
                        itemCount: snap.data!.length,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

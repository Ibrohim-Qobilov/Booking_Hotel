import 'package:booking_hotel/core/components/container_view_2.dart';
import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/screens/room_page/room_page.dart';
import 'package:booking_hotel/services/hotel_services.dart';
import './map_page_view_model.dart';

class MapPageView extends MapPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      body: FutureBuilder(
        future: HotelService().getHotel(),
        builder: (context, AsyncSnapshot<List<HotelModel>> snap) {
          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snap.hasError) {
            return const Center(
              child: Text("Error"),
            );
          } else {
            // debugPrint(snap.data.toString());
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  drowDOnwMethod(context),
                  divider(),
                  bottomView(context),
                  divider(),
                  Container(
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    height: getProportionateScreenHeight(655),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/map.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SizedBox(
                      height: getProportionateScreenHeight(150.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => RoomPage()));
                        },
                        child: ListView.builder(
                          itemBuilder: (_, __) {
                            return containerView2(snap.data![__].imageHotel,
                                snap.data![__].nameHotel);
                          },
                          itemCount: snap.data!.length,
                          scrollDirection: Axis.horizontal,
                        ),
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

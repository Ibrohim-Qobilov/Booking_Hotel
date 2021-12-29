import 'package:booking_hotel/core/components/app_bar_view.dart';
import 'package:booking_hotel/core/components/export_page.dart';

import './room_page_view_model.dart';

class RoomPageView extends RoomPageViewModel {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // Replace this with your build function
    return Scaffold(
      backgroundColor: MainColor.kOffWhite,
      appBar: AppBarView.myAppBar(
        "Hotel name",
        MainColor.kOffWhite,
        const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: hotelInfo(
        "https://images.unsplash.com/photo-1590073242678-70ee3fc28e8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        "Hotel Name",
        "1400",
        "2 night",
      ),
    );
  }
}

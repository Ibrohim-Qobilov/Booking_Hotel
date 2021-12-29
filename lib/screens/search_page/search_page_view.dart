import 'package:booking_hotel/core/components/container_view.dart';
import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/core/components/list_view.dart';

import './search_page_view_model.dart';

class SearchPageView extends SearchPageViewModel {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // Replace this with your build function
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              drowDonwMethod(context),
              divider(),
              bottomView(),
              divider(),
              Container(
                height: getProportionateScreenHeight(900),
                width: MediaQuery.of(context).size.width,
                color: MainColor.kOffWhite,
                
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
              
          ],
        ),
      ),
    );
  }
}

import 'package:booking_hotel/core/components/export_page.dart';

import './map_page_view_model.dart';

class MapPageView extends MapPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      body: SingleChildScrollView(
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
              width: double.infinity,
              height: getProportionateScreenHeight(655),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/map.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

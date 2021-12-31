import 'package:booking_hotel/core/components/drop_down_view.dart';
import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/core/components/list_view.dart';
import 'package:booking_hotel/core/components/text_form_feild.dart';
import 'package:booking_hotel/core/components/text_view.dart';
import 'package:booking_hotel/provider/text_form_provider.dart';
import 'package:booking_hotel/screens/search_room_page/search_room_page.dart';

import './home_page_view_model.dart';

class HomePageView extends HomePageViewModel {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: MainColor.kWhite,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: getProportionateScreenHeight(375),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(86),
                      left: getProportionateScreenWidth(16),
                      right: getProportionateScreenWidth(16),
                      bottom: getProportionateScreenHeight(96.0),
                    ),
                    child: Text(
                      "Find place that gives\n you ultimate calm",
                      style: GoogleFonts.nunito(
                          fontSize: getProportionateScreenWidth(36),
                          fontWeight: FontWeight.w400,
                          color: MainColor.kWhite),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: getProportionateScreenHeight(300)),
                    child: Container(
                      height: getProportionateScreenHeight(294),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(
                            getProportionateScreenWidth(30),
                          ),
                        ),
                        color: MainColor.kBlack19,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: getProportionateScreenHeight(60.0),
                                width: getProportionateScreenWidth(220),
                                margin: EdgeInsets.only(
                                  top: getProportionateScreenHeight(30),
                                  bottom: getProportionateScreenHeight(10.0),
                                  left: getProportionateScreenWidth(10),
                                  right: getProportionateScreenWidth(10),
                                ),
                                child: textFormfield("Place",
                                    TextFormfieldProvider.placeController),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: -1,
                                      blurRadius: 7,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                  color: MainColor.kBlack19,
                                ),
                                height: getProportionateScreenHeight(60.0),
                                width: getProportionateScreenWidth(102),
                                margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(10),
                                  top: getProportionateScreenHeight(30),
                                  right: getProportionateScreenHeight(10),
                                ),
                               child: DropDown.dropdownButton(
                                      DropDown.dropdownItems,
                                      DropDown.selectValue),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: getProportionateScreenHeight(60.0),
                                width: getProportionateScreenWidth(220),
                                margin: EdgeInsets.only(
                                 top: getProportionateScreenHeight(10),
                                  bottom: getProportionateScreenHeight(10.0),
                                  left: getProportionateScreenWidth(10),
                                  right: getProportionateScreenWidth(10),
                                ),
                                child: textFormfield("Date",
                                    TextFormfieldProvider.dateController),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: -1,
                                      blurRadius: 7,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                  color: MainColor.kBlack19,
                                ),
                                height: getProportionateScreenHeight(60.0),
                                width: getProportionateScreenWidth(102),
                                margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(10),
                                  right: getProportionateScreenWidth(
                                    10,
                                  ),
                                  top: getProportionateScreenHeight(10),
                                ),
                                // for drop down
                                child: DropDown.dropdownButton(
                                      DropDown.dropdownItems2,
                                      DropDown.selectValue2),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SearchRoomPage()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                top: getProportionateScreenHeight(20),
                                bottom: getProportionateScreenHeight(20),
                              ),
                              height: getProportionateScreenHeight(70),
                              width: getProportionateScreenWidth(338),
                              decoration: BoxDecoration(
                                gradient: MainColor.kOrangeGradient,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text("Search a Room",
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                    color: MainColor.kGreyLight,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: getProportionateScreenWidth(200.0),
                  top: getProportionateScreenHeight(10),
                  bottom: getProportionateScreenHeight(10),
                ),
                child: textView("Recomended", MainColor.kGrey, 25.0, "",FontWeight.normal),
              ),
              Center(
                  child: SizedBox(
                height: getProportionateScreenHeight(150.0),
                child: lisviewbuilder(
                    "https://images.unsplash.com/photo-1590073242678-70ee3fc28e8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                    "Mointain hull"),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

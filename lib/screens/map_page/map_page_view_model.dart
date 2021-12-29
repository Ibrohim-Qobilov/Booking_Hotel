import 'package:booking_hotel/core/components/drop_down_view.dart';
import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/screens/filter_page/filter_page.dart';
import 'package:flutter/material.dart';
import './map_page.dart';

abstract class MapPageViewModel extends State<MapPage> {
  Container drowDOnwMethod(BuildContext context) {
    return Container(
            decoration: BoxDecoration(color: Colors.white10, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 1),
                
              )
            ]),
            height: getProportionateScreenHeight(50.0),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: getProportionateScreenWidth(10),
              right: getProportionateScreenWidth(
                10,
              ),
              top: getProportionateScreenHeight(10),
            ),
            // for drop down
            child: DropDown.dropdownButton2(
                DropDown.dropdwnItems3, DropDown.selectValue3),
          );
  }
   Divider divider() => const Divider(color: MainColor.kGrey,);
   TextButton textBottom(text,textPage,) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder: (_) => textPage));
      },
      child:  Text(
        text,
        style: const TextStyle(color: MainColor.kGrey),
      ),
    );
  }

  Container bottomView(BuildContext context) {
    return Container(
            width: double.infinity,
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
                textBottom("List View", HomePage())
              ],
            ),
          );
  }
  // Add your state and logic here
}

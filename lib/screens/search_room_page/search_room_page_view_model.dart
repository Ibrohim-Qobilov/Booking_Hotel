import 'package:booking_hotel/core/components/drop_down_view.dart';
import 'package:booking_hotel/core/components/export_page.dart';
import 'package:flutter/material.dart';
import './search_room_page.dart';

abstract class SearchRoomPageViewModel extends State<SearchRoomPage> {
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
  // Add your state and logic here
}

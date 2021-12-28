import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/core/constants/colors.dart';
import 'package:booking_hotel/screens/search_room_page/search_room_page.dart';
import 'package:flutter/material.dart';
import './notifications_page_view_model.dart';

class NotificationsPageView extends NotificationsPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      backgroundColor: MainColor.kWhite,
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            // SizedBox(height: getProportionateScreenHeight(30.0)),
            topScreensMethod(
                "https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                "Hotel Uzbekistan",
                "Non 12-24"),

            SizedBox(
              height: getProportionateScreenHeight(600),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (_, __) => Padding(
                  padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(5),
                    bottom: getProportionateScreenHeight(5.0),
                  ),
                  child: const ListTile(
                    title: Text(
                      "your stay at hotel Venice Royal at Venie Royal, Venice, Italy",
                      style:
                          TextStyle(fontSize: 20.0, color: MainColor.kBlacText),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: MainColor.kBlacText,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

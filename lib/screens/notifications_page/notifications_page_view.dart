import 'package:booking_hotel/core/components/export_page.dart';
import 'package:flutter/material.dart';
import './notifications_page_view_model.dart';

class NotificationsPageView extends NotificationsPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      backgroundColor: MainColor.kWhite,
      body: Center(
          child: Column(
        children: [
          // SizedBox(height: getProportionateScreenHeight(30.0)),
          Container(
            height: getProportionateScreenHeight(300),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
            child: Column(
              children: [],
            ),
          ),
        ],
      )),
    );
  }
}

import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/core/components/list_view.dart';
import 'package:flutter/material.dart';
import './search_page_view_model.dart';

class SearchPageView extends SearchPageViewModel {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // Replace this with your build function
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(height: getProportionateScreenHeight(150.0),child: lisviewbuilder("https://images.unsplash.com/photo-1590073242678-70ee3fc28e8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", "Mointain hull"),)
          ),
        ],
      ),
    );
  }
}

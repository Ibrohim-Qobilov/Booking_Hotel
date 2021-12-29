import 'package:booking_hotel/core/components/app_bar_view.dart';
import 'package:booking_hotel/core/constants/colors.dart';
import 'package:flutter/material.dart';
import './room_page_view_model.dart';
  
class RoomPageView extends RoomPageViewModel {
    
  @override
  Widget build(BuildContext context) {
    
    // Replace this with your build function
    return Scaffold(appBar: AppBarView.myAppBar("Hotel name", MainColor.kBlacText,Icon(Icons.arrow_back_ios),),);
  }
}


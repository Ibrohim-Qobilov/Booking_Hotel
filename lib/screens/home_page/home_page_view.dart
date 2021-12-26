import 'package:booking_hotel/core/components/size_config.dart';
import 'package:booking_hotel/core/constants/colors.dart';
import 'package:booking_hotel/core/text_view.dart';
import 'package:flutter/material.dart';
import './home_page_view_model.dart';

class HomePageView extends HomePageViewModel {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // Replace this with your build function
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  alignment: Alignment.center,
                  height: getProportionateScreenHeight(300.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1640351960764-efb8d0850ae9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: getProportionateScreenWidth(30.0),
                        left: getProportionateScreenWidth(30.0)),
                    child: TextView().textView(
                        "Find place that gives you ultimate calm",
                        MainColor.kGreyLight,
                        29.0,
                        "Dosis"),
                  ),
                ),
              ),
              Positioned(
                top: 270,
                child: Container(
                  height: getProportionateScreenHeight(300.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0),
                    ),
                    color: MainColor.kBlacText,
                  ),
                  child: Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(),
                              TextFormField(),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

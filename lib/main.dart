import 'package:booking_hotel/provider/bottom_navigation_bar._provider.dart';
import 'package:booking_hotel/screens/home_page/home_page.dart';

import 'package:booking_hotel/widgets/Booking_hotel_bottom_navogation_bar.dart';
// import 'package:booking_hotel/widgets/Booking_hotel_bottom_navogation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
    ],
    child: const MyApp(),
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booking Hotel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      // home: MyBottomNavigationBar(),
    );
  }
}

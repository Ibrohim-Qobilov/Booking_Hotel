import 'package:booking_hotel/core/components/app_theme.dart';
import 'package:booking_hotel/provider/bottom_navigation_bar._provider.dart';
import 'package:booking_hotel/provider/text_for_provider.dart';
import 'package:booking_hotel/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
      ChangeNotifierProvider(create: (_) => TextFormfieldProvider()),
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
      themeMode: ThemeMode.system,
      theme: AppTheme.lighttheme,
      darkTheme: AppTheme.darktheme,
      debugShowCheckedModeBanner: false,
      title: 'Booking Hotel',
      home: const MainPage(),
      // home: MyBottomNavigationBar(),
    );
  }
}

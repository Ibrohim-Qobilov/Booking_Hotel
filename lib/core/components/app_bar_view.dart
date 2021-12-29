import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../components/export_page.dart';

class AppBarView {
  static AppBar myAppBar(String title, Color color, leading,action) => AppBar(
    leading: leading,
    actions: action,
        title: Text(title),
        backgroundColor: color,
        elevation: 0,
      );
}
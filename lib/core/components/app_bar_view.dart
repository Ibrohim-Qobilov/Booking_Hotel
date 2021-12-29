import '../components/export_page.dart';

class AppBarView {
  static AppBar myAppBar(String title, Color color, leading,) => AppBar(
    leading: leading,
    
        title: Text(title),
        backgroundColor: color,
        elevation: 0,
      );
}
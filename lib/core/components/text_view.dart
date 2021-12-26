import '../components/export_page.dart';

class TextView {
  Text textView(
    text,
    color,
    fontsize,
    family,
  ) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontFamily: family
      ),
    );
  }
}

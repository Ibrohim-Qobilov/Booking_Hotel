import '../components/export_page.dart';

class DropDownView {
  static String dropDownValue1 = "Guests";
  static String dropDownValue2 = "Night";
  static List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Guests"), value: "Guests"),
      DropdownMenuItem(child: Text("One"), value: "One"),
      DropdownMenuItem(child: Text("Family"), value: "Family"),
      DropdownMenuItem(child: Text("Couple"), value: "Couple"),
    ];
    return menuItems;
  }
  static List<DropdownMenuItem<String>> get dropdownItems2 {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Night"), value: "Night"),
      DropdownMenuItem(child: Text("Day"), value: "Day"),
      DropdownMenuItem(child: Text("Week"), value: "Week"),
      DropdownMenuItem(child: Text("Month"), value: "Month"),
    ];
    return menuItems;
  }

  static DropdownButtonFormField<String> dropdownButton(var items,var dropDownValue1) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
      elevation: 10,
      style: GoogleFonts.nunito(
          fontSize: getProportionateScreenHeight(14),
          fontWeight: FontWeight.bold,
          color: MainColor.kGrey),
      value: dropDownValue1,
      dropdownColor: MainColor.kBlack19,
      items: items,
      onChanged: (String? value) {},
    );
  }
}

import '../components/export_page.dart';

TextFormField textFormfield(String hintText, var controller) {
  return TextFormField(
    style: GoogleFonts.nunito(
        fontSize: 16, color: MainColor.kGrey, fontWeight: FontWeight.w400),
    decoration: InputDecoration(
      fillColor: MainColor.kblackW,
      hintText: hintText,
      hintStyle: GoogleFonts.nunito(
          fontSize: 16, color: MainColor.kGrey, fontWeight: FontWeight.w400),
      border: OutlineInputBorder(
        
          borderSide: const BorderSide(
            color: MainColor.kblackW,
          ),
          borderRadius: BorderRadius.circular(30)),
    ),
  );
}
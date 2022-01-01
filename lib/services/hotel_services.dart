import 'package:booking_hotel/core/components/export_page.dart';


class HotelService {
  Future<List<HotelModel>> getHotel() async{
    Response res = await Dio().get(idAdress);
  // debugPrint(res.data.toString());
    return (res.data as List).map((e) => HotelModel.fromJson(e)).toList();
  }
}
import 'package:booking_hotel/core/components/export_page.dart';
import 'package:booking_hotel/core/constants/const_network.dart';
import 'package:booking_hotel/models/hotel_model.dart';
import 'package:dio/dio.dart';

class HotelService {
  Future<List<HotelModel>> getHotel() async{
    Response res = await Dio().get(idAdress);
  debugPrint(res.data.toString());
    return (res.data as List).map((e) => HotelModel.fromJson(e)).toList();
  }
}
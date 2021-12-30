// To parse this JSON data, do
//
//     final hotelMOdel = hotelMOdelFromJson(jsonString);

import 'dart:convert';

List<HotelMOdel> hotelMOdelFromJson(String str) => List<HotelMOdel>.from(json.decode(str).map((x) => HotelMOdel.fromJson(x)));

String hotelMOdelToJson(List<HotelMOdel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HotelMOdel {
    HotelMOdel({
        this.id,
        this.price,
        this.imageMountain,
        this.nameMountain,
        this.aboutMountain,
        this.imageHotel,
        this.nameHotel,
        this.aboutHotel,
        this.fromCentre,
        this.imageRoom,
        this.night,
        this.v,
    });

    String? id;
    int? price;
    String? imageMountain;
    String? nameMountain;
    String? aboutMountain;
    String? imageHotel;
    String? nameHotel;
    String? aboutHotel;
    String? fromCentre;
    String? imageRoom;
    String? night;
    int? v;

    factory HotelMOdel.fromJson(Map<String, dynamic> json) => HotelMOdel(
        id: json["_id"],
        price: json["price"],
        imageMountain: json["imageMountain"],
        nameMountain: json["nameMountain"],
        aboutMountain: json["aboutMountain"],
        imageHotel: json["imageHotel"],
        nameHotel: json["nameHotel"] == null ? null : json["nameHotel"],
        aboutHotel: json["aboutHotel"],
        fromCentre: json["fromCentre"],
        imageRoom: json["imageRoom"],
        night: json["night"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "price": price,
        "imageMountain": imageMountain,
        "nameMountain": nameMountain,
        "aboutMountain": aboutMountain,
        "imageHotel": imageHotel,
        "nameHotel": nameHotel == null ? null : nameHotel,
        "aboutHotel": aboutHotel,
        "fromCentre": fromCentre,
        "imageRoom": imageRoom,
        "night": night,
        "__v": v,
    };
}

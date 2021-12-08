// To parse this JSON data, do
//
//     final myresponse = myresponseFromJson(jsonString);

import 'dart:convert';

Myresponse myresponseFromJson(String str) =>
    Myresponse.fromJson(json.decode(str));

String myresponseToJson(Myresponse data) => json.encode(data.toJson());

class Myresponse {
  Myresponse({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  String activity;
  String type;
  int participants;
  double price;
  String link;
  String key;
  double accessibility;

  factory Myresponse.fromJson(Map<String, dynamic> json) => Myresponse(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"].toDouble(),
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
      };
}

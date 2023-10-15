import 'dart:convert';

List<TimezoneModel> timezonesFromJson(String str) => List<TimezoneModel>.from(
    json.decode(str).map((x) => TimezoneModel.fromJson(x)));

String timezonesToJson(List<TimezoneModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TimezoneModel {
  String? value;
  String? abbr;
  double? offset;
  bool? isdst;
  String? text;
  List<String>? utc;

  TimezoneModel({
    this.value,
    this.abbr,
    this.offset,
    this.isdst,
    this.text,
    this.utc,
  });

  TimezoneModel copyWith({
    String? value,
    String? abbr,
    double? offset,
    bool? isdst,
    String? text,
    List<String>? utc,
  }) =>
      TimezoneModel(
        value: value ?? this.value,
        abbr: abbr ?? this.abbr,
        offset: offset ?? this.offset,
        isdst: isdst ?? this.isdst,
        text: text ?? this.text,
        utc: utc ?? this.utc,
      );

  factory TimezoneModel.fromJson(Map<String, dynamic> json) => TimezoneModel(
        value: json["value"],
        abbr: json["abbr"],
        offset: json["offset"]?.toDouble(),
        isdst: json["isdst"],
        text: json["text"],
        utc: json["utc"] == null
            ? []
            : List<String>.from(json["utc"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "abbr": abbr,
        "offset": offset,
        "isdst": isdst,
        "text": text,
        "utc": utc == null ? [] : List<dynamic>.from(utc!.map((x) => x)),
      };
}

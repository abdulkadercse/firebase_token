import 'dart:convert';

BindModel bindModelFromJson(String str) => BindModel.fromJson(json.decode(str));

String bindModelToJson(BindModel data) => json.encode(data.toJson());

class BindModel {
  BindModel({
    required this.code,
    required this.kind,
    required this.message,
    required this.data,
  });

  int code;
  String kind;
  String message;
  Data data;

  factory BindModel.fromJson(Map<String, dynamic> json) => BindModel(
    code: json["code"],
    kind: json["kind"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "kind": kind,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => Data(
  );

  Map<String, dynamic> toJson() => {
  };
}
